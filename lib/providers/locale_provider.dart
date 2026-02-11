import 'dart:ui';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_provider.g.dart';

@riverpod
class ActiveLocale extends _$ActiveLocale {
  @override
  Locale build() {
    return Locale('en');
  }

  void set(Locale value) => state = value;
}
