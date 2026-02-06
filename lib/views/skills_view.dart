import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Skills", textAlign: TextAlign.start, style: TextStyle(fontSize: 20)),
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            bool isWide = constraints.maxWidth > 400;
            return Column(
              spacing: 24.0,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SelectionArea(
                  child: Container(
                    padding: EdgeInsets.all(24.0),
                    // height: 250,
                    // width: 400,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(offset: Offset(4, 4), color: Theme.of(context).colorScheme.onSurfaceVariant),
                      ],
                    ),
                    child: Column(
                      spacing: 12,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 24,
                          children: [
                            Expanded(
                              child: Column(
                                spacing: 12,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ListWidget(titleCategory: "Flutter", entries: skillsFlutter),
                                  // Divider(color: Colors.transparent),
                                  ListWidget(titleCategory: "API", entries: skillsApi),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                spacing: 12,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ListWidget(titleCategory: "Databases", entries: skillsDatabase),
                                  // Divider(color: Colors.transparent),
                                  ListWidget(titleCategory: "CI/CD", entries: skillsCICD),
                                ],
                              ),
                            ),
                            if (isWide)
                              Expanded(
                                child: ListWidget(titleCategory: "Languages", entries: skillsLangs),
                              ),
                            if (isWide)
                              Expanded(
                                child: ListWidget(titleCategory: "Software", entries: skillsSoftware),
                              ),
                          ],
                        ),
                        if (!isWide)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 30,
                            children: [
                              Expanded(
                                child: ListWidget(titleCategory: "Languages", entries: skillsLangs),
                              ),
                              Expanded(
                                child: ListWidget(titleCategory: "Software", entries: skillsSoftware),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class ListWidget extends StatelessWidget {
  final String titleCategory;
  final List<String> entries;
  const ListWidget({super.key, required this.titleCategory, required this.entries});

  @override
  Widget build(BuildContext context) {
    TextStyle styleTitle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      letterSpacing: 1.4,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6.0,
      children:
          [Text(titleCategory, style: styleTitle, maxLines: 1, softWrap: false, overflow: TextOverflow.visible)] +
          List.generate(
            entries.length,
            (index) =>
                Text("${entries[index] != "" ? String.fromCharCode(8227) : ""} ${entries[index]}", maxLines: 2),
          ),
    );
  }
}

List<String> skills = ["Flutter", "Dart", "SQL", "Git"];
List<String> skillsFlutter = ["Riverpod", "BLoC", "Freezed", "Hooks", "Firebase"];
List<String> skillsApi = ["GraphQL", "REST", "Web Sockets"];
List<String> skillsCICD = ["Github Actions", "Fastlane", "Jenkins"];
List<String> skillsLangs = ["Dart", "HTML", "CSS", "JSON", "Java", "C#", "Python", "GLSL", "HLSL"];
List<String> skillsSoftware = [
  "Android Studio",
  "VS Code",
  "Blender",
  "Unity",
  "Photoshop",
  "Krita",
  "Audacity",
  "Inkscape",
  "Godot",
];
List<String> skillsDatabase = ["Firebase", "Drift", "SQFLite", "Hive", ""];
