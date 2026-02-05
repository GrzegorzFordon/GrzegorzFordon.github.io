import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/views/about_view.dart';
import 'package:portfolio/views/footer_view.dart';
import 'package:portfolio/views/misc_view.dart';
import 'package:portfolio/views/profile_view.dart';
import 'package:portfolio/views/projects_view.dart';
import 'package:portfolio/views/skills_view.dart';

var spacing = 8.0;

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          spacing: 24.0,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                bool isWide = constraints.maxWidth > 600;
                if (isWide)
                  return MainViewMultiPanel();
                else
                  return MainViewSinglePanel();
              },
            ),
            FooterView(),
          ],
        ),
      ),
    );
  }
}

class MainViewSinglePanel extends StatelessWidget {
  const MainViewSinglePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      // mainAxisSize: MainAxisSize.max,
      children: [
        // SizedBox(height: 48),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: spacing,

          children: [
            Expanded(child: AboutView()),
            ProfileView(),
          ],
        ),
        SkillsView(),
        ProjectsView(),
        MiscView(),
      ],
    );
  }
}

class MainViewMultiPanel extends StatelessWidget {
  const MainViewMultiPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      spacing: spacing,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SizedBox(height: 48),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 50,
          children: [
            Flexible(child: AboutView()),
            ProfileView(),
          ],
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 50,
          children: [
            Flexible(flex: 4, child: ProjectsView()),
            Flexible(flex: 2, child: Column(spacing: 50, children: [SkillsView(), MiscView()])),
          ],
        ),
      ],
    );
  }
}
