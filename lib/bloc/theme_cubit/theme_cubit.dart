import 'package:flutter_bloc/flutter_bloc.dart';


enum ThemeState {
  light, dark
}

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.light);

  changeTheme() {
    if(state == ThemeState.light) {
      emit(ThemeState.dark);
    }else {
      emit(ThemeState.light);
    }
  }
}
