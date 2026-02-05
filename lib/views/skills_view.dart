import 'package:flutter/material.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Skills", textAlign: TextAlign.start, style: TextStyle(fontSize: 20)),
        Column(
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
                  boxShadow: [BoxShadow(offset: Offset(4, 4), color: Theme.of(context).colorScheme.onSurfaceVariant)],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 30,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListWidget(titleCategory: "Flutter & Dart", entries: skillsFlutter),
                        Divider(color: Colors.transparent),
                        ListWidget(titleCategory: "API", entries: skillsApi),
                      ],
                    ),
                    ListWidget(titleCategory: "Languages", entries: skillsLangs),
                    Column(
                      children: [
                        ListWidget(titleCategory: "Databases", entries: skillsDatabase),
                        Divider(color: Colors.transparent),
                        ListWidget(titleCategory: "CI/CD", entries: skillsCICD),
                      ],
                    ),
                    ListWidget(titleCategory: "Software", entries: skillsSoftware),
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
    );
    return Container(
      decoration: BoxDecoration(
        // color: Theme.of(context).colorScheme.secondaryContainer.withAlpha(150),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.0,
        children:
            [Text(titleCategory, style: styleTitle)] + List.generate(entries.length, (index) => Text(entries[index])),
      ),
    );
  }
}

List<String> skills = ["Flutter", "Dart", "SQL", "Git"];
List<String> skillsFlutter = ["Riverpod", "BLoC", "Freezed", "Hooks", "Firebase"];
List<String> skillsApi = ["GraphQL", "REST", "Web Sockets"];
List<String> skillsCICD = ["Github Actions", "Fastlane", "Jenkins"];
List<String> skillsLangs = ["Dart", "HTML / CSS", "JSON", "Java", "C#", "Python", "GLSL / HLSL"];
List<String> skillsSoftware = ["Blender", "Unity", "Photoshop", "Krita", "Audacity", "Inkscape", "Godot"];
List<String> skillsDatabase = ["Firebase", "Drift", "SQFLite", "Hive"];
