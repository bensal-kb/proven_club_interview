import 'package:demo1/data/repo/repo.dart';
import 'package:demo1/data/repo/repo_provider.dart';
import 'package:demo1/data/urls.dart';
import 'package:demo1/features/home/view/home_page.dart';
import 'package:demo1/res/theme/theme_dark.dart';
import 'package:demo1/res/theme/theme_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/theme_cubit/theme_cubit.dart';
import 'main.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: (state == ThemeState.light)
                ? ThemeLight().getTheme(context)
                : ThemeDark().getTheme(context),
            home: const HomePage(),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    RepoProvider repo = RepoProvider();
    super.initState();
    getIt.registerSingleton<Urls>(Urls());
    getIt.registerSingleton<Repo>(repo.repo);
  }
}
