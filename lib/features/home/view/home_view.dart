import 'package:demo1/data/models/gif_model.dart';
import 'package:demo1/features/home/bloc/home_cubit/home_cubit.dart';
import 'package:demo1/features/home/widgets/home_gif_tile.dart';
import 'package:demo1/features/search/view/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../bloc/theme_cubit/theme_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proven Club'),
        backgroundColor: Colors.teal,
        leading: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return IconButton(
              onPressed: () =>
                  BlocProvider.of<ThemeCubit>(context).changeTheme(),
              icon: state == ThemeState.light
                  ? const Icon(Icons.light_mode, color: Colors.white,)
                  : const Icon(Icons.dark_mode),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const SearchPage(),
              ));
            },
          )
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeInitial || state is HomeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return RefreshIndicator(
            onRefresh: () async =>
                BlocProvider.of<HomeCubit>(context).pagingController.refresh(),
            child: PagedGridView<int, GifModel>(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              pagingController:
                  BlocProvider.of<HomeCubit>(context).pagingController,
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
