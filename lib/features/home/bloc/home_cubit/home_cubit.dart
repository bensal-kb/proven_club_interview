import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../data/models/gif_model.dart';
import '../../../../data/repo/repo.dart';
import '../../../../data/res.dart';
import '../../../../main.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static const int pageSize = 10;
  final PagingController<int, GifModel> pagingController =
      PagingController(firstPageKey: 0);

  loadData() {
    emit(HomeLoading());
    pagingController.addPageRequestListener((pageKey) {
      loadPage(pageKey);
    });
      emit(HomeSuccess());
  }

  loadPage(int offset) async {
    try {
      Res<List<GifModel>> res =
          await getIt<Repo>().getGifList(offset: offset, limit: pageSize);
      final isLastPage = res.data!.length < pageSize;
      if (isLastPage) {
        pagingController.appendLastPage(res.data!);
      } else {
        final nextPageKey = offset + res.data!.length;
        pagingController.appendPage(res.data!, nextPageKey);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }
}
