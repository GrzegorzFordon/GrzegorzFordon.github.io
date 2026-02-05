import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 48, color: Theme.of(context).colorScheme.onSurface);

    return SelectionArea(
      child: Container(
        height: 250,
        constraints: BoxConstraints(maxWidth: 800),
        // decoration: BoxDecoration(color: Colors.greenAccent.withAlpha(50), borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi! I'm Grzegorz. ", style: textStyle),
            RichText(text: TextSpan(
              style: textStyle.copyWith(fontSize: 20),
              children: [
                TextSpan(text: "A full-Stack Developer with a focus on the "),
                WidgetSpan(child: Icon(Symbols.flutter_rounded,color: textStyle.color,)),
                TextSpan(text: " Flutter framework.")
              ]
            )),
            // Text(
            //   "A full-Stack Developer with a focus on the Flutter framework.",
            //   style: textStyle.copyWith(fontSize: 20),
            // ),
            Text(
              "Based in Berlin, Germany",
              style: textStyle.copyWith(fontSize: 20, color: textStyle.color?.withAlpha(150)),
            ),
          ],
        ),
      ),
    );
  }
}
