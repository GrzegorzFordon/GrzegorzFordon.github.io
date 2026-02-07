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
          "Stuck on a blank page? Try PrompTwist! Responsive idea sparker that combines random word generators with random color palettes, guaranteing a new idea each time.",
      bulletpoints: [
        "State management with Riverpod",
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
      githubURL: "https://github.com/GrzegorzFordon/promptwist",
      hostURL: "https://grzegorzfordon.github.io/promptwist/",
    );

    ProjectModel modelSubmeowsions = ProjectModel(
      title: "Sub-meow-sions",
      paragraph:
          "My partner asked me to create a simple solution for keeping track of his art submission to magazines.\r Submeowsions holds a database of works, publishers and submissions with quick options for accessing and editing as well as a statistics page with summaries of recent results.",
      bulletpoints: [
        "State management with Riverpod",
        "SQL database with Drift",
        "Navigation with GoRouter",
        // "four and five and six and",
        // "new last one that has a bit more to say",
      ],
      imagePaths: [
        "assets/screens/submeowsions01.png",
        "assets/screens/submeowsions02.png",
        "assets/screens/submeowsions03.png",
      ],
      githubURL: "https://github.com/GrzegorzFordon/submeowsions",
      hostURL: "",
    );

    ProjectModel modelStitchintime = ProjectModel(
      title: "Stitchin' Time",
      paragraph:
          "Cross-platform app for color chart creation. Create charts using a fully-fledged pixel art editor, then switch to the reader screen to use the same app when it comes time to knit/crochet the chart.",
      bulletpoints: [
        "State management with Riverpod",
        "Local storage and autosave with Hive",
        // "last one, short",
        // "four and five and six and",
        // "new last one that has a bit more to say",
      ],
      imagePaths: [
        "assets/screens/stitchintime01.png",
        "assets/screens/stitchintime02.png",
        "assets/screens/stitchintime03.png",
      ],
      githubURL: "https://github.com/GrzegorzFordon/stitchin_time",
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
