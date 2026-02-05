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
    var pageController = usePageController();
    Duration duration = Duration(milliseconds: 1000);
    Curve curve = Curves.fastEaseInToSlowEaseOut;

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 900),
      child: Container(
        padding: EdgeInsets.all(12.0),
        // width: double.infinity,
        // height: 300,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(offset: Offset(4, 4), color: Theme.of(context).colorScheme.onSurfaceVariant)],
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            bool isWide = constraints.maxWidth > 600;
            // log("${constraints.maxWidth}");
            return Flex(
              direction: isWide ? Axis.horizontal : Axis.vertical,
              spacing: isWide ? 4 : 12,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: isWide ? CrossAxisAlignment.start : CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 24.0,
                  children: [
                    Text(
                      model.title,
                      style: TextStyle(fontSize: 36, fontWeight: FontWeight.w800),
                      overflow: TextOverflow.clip,
                      maxLines: 1,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: isWide ? 400 : 600),
                      child: Text(model.paragraph),
                    ),
                    BulletPointsText(bulletPoints: model.bulletpoints),
                    ButtonRow(pageUrlString: model.hostURL, repoUrlString: model.githubURL),
                  ],
                ),
                Container(
                  height: 300,
                  width: isWide ? 250 : double.infinity,
                  // color: Colors.green,
                  // child: ImageSlideShowWidget(imagePaths: model.imagePaths),
                  child: isWide
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: PageView(
                                controller: pageController,
                                children: [
                                  Image.asset(model.imagePaths[0], filterQuality: FilterQuality.high),
                                  Image.asset(model.imagePaths[1], filterQuality: FilterQuality.high),
                                  Image.asset(model.imagePaths[2], filterQuality: FilterQuality.high),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () => pageController.previousPage(duration: duration, curve: curve),
                                  icon: Icon(Icons.arrow_back_rounded, color: Theme.of(context).colorScheme.surface),
                                ),
                                SmoothPageIndicator(
                                  controller: pageController,
                                  count: model.imagePaths.length,
                                  effect: ColorTransitionEffect(),
                                  onDotClicked: (index) =>
                                      pageController.animateToPage(index, duration: duration, curve: curve),
                                ),
                                IconButton(
                                  onPressed: () => pageController.nextPage(duration: duration, curve: curve),
                                  icon: Icon(Icons.arrow_forward_rounded, color: Theme.of(context).colorScheme.surface),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Container(
                          padding: EdgeInsets.all(8.0),
                          constraints: BoxConstraints(maxWidth: 30),
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Row(
                              spacing: 24.0,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  model.imagePaths[0],
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.scaleDown,
                                ),
                                Image.asset(
                                  model.imagePaths[1],
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.scaleDown,
                                ),
                                Image.asset(
                                  model.imagePaths[2],
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.scaleDown,
                                ),
                              ],
                            ),
                          ),
                        ),
                ),
              ],
            );
          },
        ),
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

class ImageSlideShowWidget extends HookWidget {
  final List<String> imagePaths;
  const ImageSlideShowWidget({super.key, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    var pageController = usePageController();
    Duration duration = Duration(milliseconds: 1000);
    Curve curve = Curves.fastEaseInToSlowEaseOut;

    return Column(
      spacing: 15,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisSize: MainAxisSize.min,
      children: [
        PageView.builder(
          controller: pageController,
          pageSnapping: true,
          itemCount: imagePaths.length,
          itemBuilder: (BuildContext context, int index) =>
              Image.asset(imagePaths[index], filterQuality: FilterQuality.high),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => pageController.previousPage(duration: duration, curve: curve),
              icon: Icon(Icons.arrow_back_rounded, color: Theme.of(context).colorScheme.surface),
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: imagePaths.length,
              effect: ColorTransitionEffect(),
              onDotClicked: (index) => pageController.animateToPage(index, duration: duration, curve: curve),
            ),
            IconButton(
              onPressed: () => pageController.nextPage(duration: duration, curve: curve),
              icon: Icon(Icons.arrow_forward_rounded, color: Theme.of(context).colorScheme.surface),
            ),
          ],
        ),
      ],
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

class ImageCarousel extends HookWidget {
  final List<String> imagePaths;
  const ImageCarousel({super.key, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    var controller = useCarouselController();

    return CarouselView.weighted(
      flexWeights: [1, 1, 1],
      controller: controller,
      onTap: (value) => controller.animateToItem(value, duration: Duration(milliseconds: 500)),
      children: [
        Image.asset(imagePaths[0], filterQuality: FilterQuality.high, fit: BoxFit.fitHeight),
        Image.asset(imagePaths[1], filterQuality: FilterQuality.high, fit: BoxFit.fitHeight),
        Image.asset(imagePaths[2], filterQuality: FilterQuality.high, fit: BoxFit.fitHeight),
      ],
    );
  }
}
