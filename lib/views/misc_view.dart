import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gif_view/gif_view.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:video_player/video_player.dart';

class MiscView extends HookWidget {
  const MiscView({super.key});

  @override
  Widget build(BuildContext context) {
    // var pageController = usePageController(initialPage: 100);
    var videoIndex = useState(0);

    var videoController = useState(VideoPlayerController.networkUrl(Uri.parse("https://i.imgur.com/SEpYkPT.mp4")));

    videoController.value.initialize();
    videoController.value.play();

    Duration duration = Duration(milliseconds: 500);
    Curve curve = Curves.fastEaseInToSlowEaseOut;
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
                  children:
                      List<Widget>.generate(miscText.length, (index) => Text(miscText[index])) +
                      [
                        Container(
                          width: 400,
                          height: 200,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: VideoPlayer(videoController.value),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                  onPressed: () {
                                    videoIndex.value = (videoIndex.value - 1) % gamedevGifUrls.length;
                                    videoController.value = VideoPlayerController.networkUrl(
                                      Uri.parse("https://i.imgur.com/${gamedevGifUrls[videoIndex.value]}.mp4"),
                                    );
                                    videoController.value.initialize();
                                  },
                                  icon: Icon(Icons.arrow_back_ios_rounded),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                  // onPressed: () => pageController.nextPage(duration: duration, curve: curve),
                                  onPressed: () {
                                    var oldindex = videoIndex.value;
                                    videoIndex.value = (videoIndex.value + 1) % gamedevGifUrls.length;
                                    videoController.value = VideoPlayerController.networkUrl(
                                      Uri.parse("https://i.imgur.com/${gamedevGifUrls[videoIndex.value]}.mp4"),
                                    );
                                    videoController.value.initialize();
                                    videoController.value.play();
                                  },
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
  "In my free time I enjoy playing board games and cooking with friends. Some of my current favourites to play are Scythe, Root and the Arkham Horror LCG. :)",
  "I also admin a game development-focused Discord server that puts a big focus on helping new developers gain their skills quickly.",
  // "I also do game dev as a hobby",
];

List<String> gamedevGifUrls = ["SEpYkPT", "SELQywI", "JVxj7R1", "pvO3Kbq", "vSXF4GP", "P5d6bT3", "ZavL3BS"];
