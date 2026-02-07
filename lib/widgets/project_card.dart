import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends HookWidget {
  final ProjectModel model;
  const ProjectCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 900),
        child: Container(
          clipBehavior: Clip.none,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [BoxShadow(offset: Offset(4, 4), color: Theme.of(context).colorScheme.onSurfaceVariant)],
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              bool isWide = constraints.maxWidth > 650;
              return Flex(
                clipBehavior: Clip.none,
                direction: isWide ? Axis.horizontal : Axis.vertical,
                spacing: isWide ? 12 : 12,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    spacing: 24.0,
                    children: [
                      Text(
                        model.title,
                        style: TextStyle(fontSize: 36, fontWeight: FontWeight.w800),
                        overflow: TextOverflow.clip,
                        maxLines: 1,
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: isWide ? 400 : 400),
                        child: Text(model.paragraph),
                      ),
                      BulletPointsText(bulletPoints: model.bulletpoints),
                      ButtonRow(pageUrlString: model.hostURL, repoUrlString: model.githubURL),
                    ],
                  ),
                  Container(clipBehavior: Clip.none, height: 300, width: 250, child: ImageSlideShowWidget(model: model)),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class ImageSlideShowWidget extends HookWidget {
  final ProjectModel model;
  const ImageSlideShowWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    var pageController = usePageController(initialPage: 300);
    Duration duration = Duration(milliseconds: 1000);
    Curve curve = Curves.fastEaseInToSlowEaseOut;
    return Expanded(

      child: Stack(
        clipBehavior: Clip.none,
        children: [
          PageView.builder(
            controller: pageController,
            itemBuilder: (BuildContext context, int index) => Container(
              clipBehavior: Clip.none,
              child: Image.asset(
                model.imagePaths[index % model.imagePaths.length],
                filterQuality: FilterQuality.high,
                // cacheWidth: 250,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () => pageController.previousPage(duration: duration, curve: curve),
              icon: Icon(Icons.arrow_back_ios_rounded, color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () => pageController.nextPage(duration: duration, curve: curve),
              icon: Icon(Icons.arrow_forward_ios_rounded, color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
          ),
        ],
      ),
    );
  }
}

class BulletPointsText extends StatelessWidget {
  final List<String> bulletPoints;
  const BulletPointsText({super.key, required this.bulletPoints});

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(maxHeight: 500),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          bulletPoints.length,
          (index) => Text(String.fromCharCode(8227) + " " + bulletPoints[index]),
        ),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  final String? pageUrlString;
  final String repoUrlString;
  const ButtonRow({super.key, required this.pageUrlString, required this.repoUrlString});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (pageUrlString != "")
          ElevatedButton(
            onPressed: () => _launchUrl(pageUrlString ?? ""),
            child: Row(spacing: 5, children: [Icon(Icons.link_rounded), Text("Try it!")]),
          ),
        if (repoUrlString != "")
          ElevatedButton(
            onPressed: () => _launchUrl(repoUrlString),
            child: Row(
              spacing: 5,
              children: [
                SvgPicture.asset(
                  "assets/icon/GitHub_Invertocat_White_Clearspace.svg",
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurfaceVariant, BlendMode.srcIn),
                ),
                Text("See more"),
              ],
            ),
          ),
      ],
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw Exception("Could not launch url");
  }
}
