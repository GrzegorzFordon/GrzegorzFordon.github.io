import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_provider.g.dart';

@riverpod
class ActiveThemeMode extends _$ActiveThemeMode {
  @override
  ThemeMode build() {
    return ThemeMode.dark;
  }

  void toggle() =>
      state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
}
