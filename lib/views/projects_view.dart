import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/widgets/project_card.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectModel modelPromptwist = ProjectModel(
      title: "PrompTwist",
      paragraph:
          "Stuck on a blank page? Try PrompTwist! A modular, responsive app that combines random themes with random color palettes for a fresh idea each time.",
      bulletpoints: [
        "State management with Riverpod",
        "Cross platform - Released for Web, Mobile and Desktop",
      ],
      imagePaths: [
        "assets/screens/promptwist_home.png",
        "assets/screens/promptwist_categories.png",
        "assets/screens/promptwist_wide.png",
      ],
      githubURL: "https://github.com/GrzegorzFordon/promptwist",
      hostURL: "https://grzegorzfordon.github.io/promptwist/",
    );

    ProjectModel modelSubmeowsions = ProjectModel(
      title: "Submeowsions",
      paragraph:
          "My partner asked me to create a simple solution for keeping track of submissions to art/literature magazines. Submeowsions lets you curate your own database of works, publishers and submissions with quick options for accessing and editing submission data as well as a statistics page.",
      bulletpoints: [
        "State management with Riverpod",
        "SQL database with Drift",
        "Navigation with GoRouter",
      ],
      imagePaths: [
        "assets/screens/submeowsions_a.png",
        "assets/screens/submeowsions_b.png",
        "assets/screens/submeowsions_c.png",
      ],
      githubURL: "https://github.com/GrzegorzFordon/submeowsions",
      hostURL: "",
    );

    ProjectModel modelStitchintime = ProjectModel(
      title: "Stitchin' Time",
      paragraph:
          "Cross platform app for knitters/crocheters. Create charts using a fully-fledged pixel art editor, then switch to the row counter screen once ready to craft to let the app keep track of your progress.",
      bulletpoints: [
        "State management with Riverpod",
        "Local storage and autosave with Hive",
      ],
      imagePaths: [
        "assets/screens/stitchintime_a.png",
        "assets/screens/stitchintime_b.png",
        "assets/screens/stitchintime_c.png",
      ],
      githubURL: "https://github.com/GrzegorzFordon/stitchin_time",
      hostURL: "https://grzegorzfordon.github.io/stitchin_time/",
    );

    return Container(
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 20),
          ),
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
