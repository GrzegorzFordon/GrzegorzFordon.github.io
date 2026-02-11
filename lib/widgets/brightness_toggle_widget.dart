import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/providers/theme_mode_provider.dart';

class BrightnessToggleWidget extends ConsumerWidget {
  const BrightnessToggleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ThemeData themeData = Theme.of(context);
    var activeThemeMode = ref.watch(activeThemeModeProvider);
    IconData icon = activeThemeMode == ThemeMode.light
        ? Icons.light_mode_rounded
        : Icons.dark_mode_rounded;

    return IconButton(onPressed: () =>ref.read(activeThemeModeProvider.notifier).toggle(), icon: Icon(icon));
  }
}
