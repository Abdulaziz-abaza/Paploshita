import 'dart:ui';

import 'package:clean_arc/core/data/services/shared_prefs/shared_pref.dart';
import 'package:clean_arc/core/data/services/shared_prefs/shared_prefs_key.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_cubit.freezed.dart';

part 'app_state.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());

  bool isDark = false;

  //
  String currentLangCode = 'ar';

//Theme Mode

  Future<void> changeAppThemeMode({required bool? sharedMode}) async {
    isDark = sharedMode!;
    try {
      await SharedPref()
          .setBoolean(key: PrefKeys.themeMode, value: isDark)
          .then((value) {
        emit(AppState.themeChangeMode(isDark: isDark));
      }).catchError((e) {
        emit(AppState.themeChangeMode(isDark: isDark));
        print('eeee ${e}');
      });
    } catch (e) {
      print(e);
    }
    emit(AppState.themeChangeMode(isDark: isDark));
  }

  Future<void> changeAppThemeMode2({bool? sharedMode}) async {
    print('changeAppThemeMode2');
    isDark = !isDark;
    await SharedPref()
        .setBoolean(key: PrefKeys.themeMode, value: isDark)
        .then((value) {
      emit(AppState.themeChangeMode(isDark: isDark));
    });
  }

//Language Change

  void getSavedLanguage() {
    final result = SharedPref().containPreference(PrefKeys.language)
        ? SharedPref().getString(PrefKeys.language)
        : 'ar';

    currentLangCode = result!;

    emit(AppState.languageChange(locale: Locale(currentLangCode)));
  }

  Future<void> _changeLang(String langCode) async {
    await SharedPref().setString(PrefKeys.language, langCode);
    currentLangCode = langCode;
    emit(AppState.languageChange(locale: Locale(currentLangCode)));
  }

  Future<void> changeLang2(String langCode) async {
    await SharedPref().setString(PrefKeys.language, langCode);
    currentLangCode = langCode;
    emit(AppState.languageChange(locale: Locale(currentLangCode)));
  }

  void toArabic() => _changeLang('ar');

  void toEnglish() => _changeLang('en');
}
