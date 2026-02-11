import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/generated/app_localizations.dart';
import 'package:portfolio/providers/locale_provider.dart';
import 'package:portfolio/providers/theme_mode_provider.dart';
import 'package:portfolio/views/main_view.dart';
import 'package:portfolio/widgets/brightness_toggle_widget.dart';
import 'package:portfolio/widgets/l10n_choice_widget.dart';

void main() {
  runApp(ProviderScope(child: const MainApp()));
}

ThemeData themeDataLight = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.black,
    brightness: Brightness.light,
  ),
);

ThemeData themeDataDark = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.black,
    brightness: Brightness.dark,
  ),
);

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var activeLocale = ref.watch(activeLocaleProvider);
    var activeThemeMode = ref.watch(activeThemeModeProvider);

    return MaterialApp(
      title: "Portfolio - Grzegorz Fordon",
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("en"), Locale("de")],
      locale: activeLocale,
      debugShowCheckedModeBanner: false,
      theme: themeDataLight,
      darkTheme: themeDataDark,
      themeMode: activeThemeMode,
      home: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          actions: [L10nChoiceWidget(), BrightnessToggleWidget()],
        ),
        body: MainView(),
      ),
    );
  }
}
