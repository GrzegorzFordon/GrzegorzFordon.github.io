import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/providers/locale_provider.dart';

class L10nChoiceWidget extends ConsumerWidget {
  const L10nChoiceWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var activeLocale = ref.watch(activeLocaleProvider);
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: activeLocale == Locale("en")
              ? null
              : () => ref.read(activeLocaleProvider.notifier).set(Locale("en")),
          icon: Text("en"),
        ),
        IconButton(
          onPressed: activeLocale == Locale("de")
              ? null
              : () => ref.read(activeLocaleProvider.notifier).set(Locale("de")),
          icon: Text("de"),
        ),
      ],
    );
  }
}
