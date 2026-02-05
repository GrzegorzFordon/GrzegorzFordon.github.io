import 'package:flutter/material.dart';

class MiscView extends StatelessWidget {
  const MiscView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4.0,
          children: [
            Text("Personal", textAlign: TextAlign.start, style: TextStyle(fontSize: 20)),
            SelectionArea(
              child: Container(
                // height: 250,
                // width: 250,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(offset: Offset(4, 4), color: Theme.of(context).colorScheme.onSurfaceVariant)],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  spacing: 24,
                  children: List<Widget>.generate(miscText.length, (index) => Text(miscText[index]))+[Image.asset("assets/gamedev01.png",cacheWidth: 300,)],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

List<String> miscText = [
  "I admin a game development-focused Discord server that puts a big focus on helping new developers gain their skills quickly.",
  "In my free time I enjoy playing board games and cooking with friends. Some of my current favourites to play are Scythe, Root and the Arkham Horror LCG. :)",
  "I also do game dev as a hobby",
];
