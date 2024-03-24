import 'package:demo1/features/home/bloc/home_cubit/home_cubit.dart';
import 'package:demo1/features/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit()..loadData(),
        ),
      ],
      child: const HomeView(),
    );
  }
}
