import 'package:flutter/material.dart';
import 'package:portfolio/generated/app_localizations.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/widgets/project_card.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    ProjectModel modelPromptwist = ProjectModel(
      title: "PrompTwist",
      paragraph: localizations?.promptwist_desc ?? "",
      bulletpoints: [
        localizations?.promptwist_point_0 ?? "",
        localizations?.promptwist_point_1 ?? "",
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
      paragraph: localizations?.submeowsions_desc ?? "",

      bulletpoints: [
        localizations?.stitchin_time_point_0 ?? "",
        localizations?.stitchin_time_point_1 ?? "",
        localizations?.stitchin_time_point_2 ?? "",
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
      paragraph: localizations?.stitchin_time_desc ?? "",

      bulletpoints: [
        localizations?.submeowsions_point0 ?? "",
        localizations?.submeowsions_point1 ?? "",
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
            localizations?.projects ?? "",
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
