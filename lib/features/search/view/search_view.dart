import 'package:demo1/bloc/theme_cubit/theme_cubit.dart';
import 'package:demo1/features/search/bloc/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../data/models/gif_model.dart';
import '../../home/widgets/home_gif_tile.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BlocBuilder<ThemeCubit, ThemeState>(
  builder: (context, state) {
    return BackButton(
          color: state  == ThemeState.light ? Colors.black : Colors.white,
        );
  },
),
        title: SizedBox(
          height: 50,
          child: TextField(
            onChanged: (String str) {
              BlocProvider.of<SearchCubit>(context).loadData(str);
            },
            decoration: InputDecoration(
                hintText: 'Search...',
                isDense: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
      ),
      body: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if(state is SearchInitial) {
            return const Center(
              child: Text('Search to view results'),
            );
          }
          if (state is SearchLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return RefreshIndicator(
            onRefresh: () async => BlocProvider.of<SearchCubit>(context)
                .pagingController!
                .refresh(),
            child: PagedGridView<int, GifModel>(
              key: Key(state.query),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              pagingController:
                  BlocProvider.of<SearchCubit>(context).pagingController!,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 0, crossAxisSpacing: 0),
              builderDelegate: PagedChildBuilderDelegate(
                  itemBuilder: (context, item, index) {
                return HomeGifTile(
                  gif: item,
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
