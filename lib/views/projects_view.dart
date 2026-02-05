import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/widgets/project_card.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectModel modelPromptwist = ProjectModel(
      title: "PrompTwist!",
      paragraph:
          "Stuck on a blank page? Try PrompTwist! Idea sparker that combines random word generators with random color palettes, guaranteing a new idea each time.",
      bulletpoints: [
        "State Management with Riverpod",
        "Cross platform - Released for Web, Mobile and Desktop",
        // "last one, short",
        // "four and five and six and",
        // "new last one that has a bit more to say",
      ],
      imagePaths: [
        "assets/screens/promptwist_home.png",
        "assets/screens/promptwist_categories.png",
        "assets/screens/promptwist_wide.png",
      ],
      githubURL: "github.com",
      hostURL: "https://grzegorzfordon.github.io/promptwist/",
    );

    ProjectModel modelSubmeowsions = ProjectModel(
      title: "Sub-meow-sions",
      paragraph:
          "This is a paragraph describing the app. It is going to have around this many word? No, I lied, more like another sentence like this one. This should be enough.",
      bulletpoints: [
        "State Management with Riverpod",
        "SQL Database with Drift",
        "Navigation with GoRouter",
        // "four and five and six and",
        // "new last one that has a bit more to say",
      ],
      imagePaths: [
        "assets/screens/submeowsions_main.png",
        "assets/screens/submeowsions_main.png",
        "assets/screens/submeowsions_main.png",
      ],
      githubURL: "https://github.com/GrzegorzFordon/submeowsions",
      hostURL: "",
    );

    ProjectModel modelStitchintime = ProjectModel(
      title: "Stitchin' Time",
      paragraph:
          "This is a paragraph describing the app. It is going to have around this many word? No, I lied, more like another sentence like this one. This should be enough.",
      bulletpoints: [
        "State Management with Riverpod",
        "Local Storage with Hive",
        // "last one, short",
        // "four and five and six and",
        // "new last one that has a bit more to say",
      ],
      imagePaths: [
        "assets/screens/stitchintime_main.png",
        "assets/screens/stitchintime_main.png",
        "assets/screens/stitchintime_main.png",
      ],
      githubURL: "github.com",
      hostURL: "https://grzegorzfordon.github.io/stitchin_time/",
    );

    return Container(
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Projects", textAlign: TextAlign.start, style: TextStyle(fontSize: 20)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 24.0,
            children: [
              ProjectCard(model: modelPromptwist),
              ProjectCard(model: modelStitchintime),
              ProjectCard(model: modelSubmeowsions),
            ],
          ),
        ],
      ),
    );
  }
}
