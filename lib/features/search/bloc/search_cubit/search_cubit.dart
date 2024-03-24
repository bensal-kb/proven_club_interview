import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../data/models/gif_model.dart';
import '../../../../data/repo/repo.dart';
import '../../../../data/res.dart';
import '../../../../main.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchInitial());
  static const int pageSize = 10;
  late PagingController<int, GifModel>? pagingController;

  loadData(String query) {
    if(query.isEmpty) {
      emit(const SearchInitial());
      return;
    }
    emit( SearchLoading(query: query));
    pagingController = PagingController(firstPageKey: 0);
    pagingController!.addPageRequestListener((pageKey) {
      loadPage(pageKey);
    });
    emit( SearchSuccess(query: query));
  }

  loadPage(int offset) async {
    try {
      Res<List<GifModel>> res =
          await getIt<Repo>().getGifListByQuery(offset: offset, limit: pageSize,query: state.query );
      final isLastPage = res.data!.length < pageSize;
      if (isLastPage) {
        pagingController!.appendLastPage(res.data!);
      } else {
        final nextPageKey = pageSize + res.data!.length;
        pagingController!.appendPage(res.data!, nextPageKey);
      }
    } catch (error) {
      pagingController!.error = error;
    }
  }
}
