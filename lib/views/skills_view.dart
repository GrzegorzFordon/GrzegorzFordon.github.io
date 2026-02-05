import 'package:flutter/material.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Skills", textAlign: TextAlign.start, style: TextStyle(fontSize: 20)),
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
                ListWidget(titleCategory: "Software", entries: skillsSoftware),
                ListWidget(titleCategory: "Databases", entries: skillsDatabase),
              ],
            ),
          ),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.0,
      children:
          [Text(titleCategory, style: styleTitle)] + List.generate(entries.length, (index) => Text(entries[index])),
    );
  }
}

List<String> skills = ["Flutter", "Dart", "SQL", "Git"];
List<String> skillsFlutter = [
  "Riverpod (State Management)",
  "BLoC (State Management)",
  "Github Actions (CI/DD)",
  "Firebase",
];
List<String> skillsApi = ["GraphQL", "REST", "Web Sockets"];
List<String> skillsLangs = ["Dart", "HTML / CSS", "JSON", "Java", "C#", "Python", "GLSL / HLSL"];
List<String> skillsSoftware = ["Blender", "Unity", "Photoshop", "Krita", "Audacity", "Inkscape", "Godot"];
List<String> skillsDatabase = ["Firebase", "Drift", "SQFLite", "Hive"];
