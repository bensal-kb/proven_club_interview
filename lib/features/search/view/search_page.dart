import 'package:demo1/features/search/bloc/search_cubit/search_cubit.dart';
import 'package:demo1/features/search/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchCubit(),
        ),
      ],
      child: const SearchView(),
    );
  }
}
