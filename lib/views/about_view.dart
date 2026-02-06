import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 46, color: Theme.of(context).colorScheme.onSurface);

    return Container(
      // height: 250,
      // color: Colors.pink,
      constraints: BoxConstraints(maxWidth: 800, minWidth: 400),
      // decoration: BoxDecoration(color: Colors.greenAccent.withAlpha(50), borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          Text(
            "Hi! I'm Grzegorz.",
            style: textStyle,
            maxLines: 2,
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
          ),
          RichText(
            text: TextSpan(
              style: textStyle.copyWith(fontSize: 20),
              children: [
                TextSpan(text: "A full-Stack Developer with a focus on the "),
                WidgetSpan(child: Icon(Symbols.flutter_rounded, color: textStyle.color)),
                TextSpan(text: " Flutter framework."),
              ],
            ),
            maxLines: 3,
            // softWrap: false,
            overflow: TextOverflow.fade,
          ),
    
          Text(
            "Based in Berlin, Germany",
            style: textStyle.copyWith(fontSize: 20, color: textStyle.color?.withAlpha(150)),
            textAlign: TextAlign.start,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
