// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Hi! I\'m Grzegorz.';

  @override
  String get about_A => 'A full-stack developer with a focus on the ';

  @override
  String get about_B => ' Flutter framework.';

  @override
  String get about_C => 'Based in Berlin, Germany';

  @override
  String get skills => 'Skills';

  @override
  String get projects => 'Projects';

  @override
  String get personal => 'Personal';

  @override
  String get promptwist_desc =>
      'Stuck on a blank page? Try PrompTwist! A modular, responsive app that combines random themes with random color palettes for a fresh idea each time.';

  @override
  String get promptwist_point_0 => 'State management with Riverpod';

  @override
  String get promptwist_point_1 =>
      'Cross platform - Released for Web, Mobile and Desktop';

  @override
  String get stitchin_time_desc =>
      'Cross platform app for knitters/crocheters. Create charts using a fully-fledged pixel art editor, then switch to the row counter screen once ready to craft to let the app keep track of your progress.';

  @override
  String get stitchin_time_point_0 => 'State management with Riverpod';

  @override
  String get stitchin_time_point_1 => 'SQL database with Drift';

  @override
  String get stitchin_time_point_2 => 'Navigation with GoRouter';

  @override
  String get submeowsions_desc =>
      'My partner asked me to create a simple solution for keeping track of submissions to art/literature magazines. Submeowsions lets you curate your own database of works, publishers and submissions with quick options for accessing and editing submission data as well as a statistics page.';

  @override
  String get submeowsions_point0 => 'State management with Riverpod';

  @override
  String get submeowsions_point1 => 'Local storage and autosave with Hive';

  @override
  String get personal_desc =>
      'I enjoy playing board games and cooking with friends. Some of my current favourites to play are Scythe, Coup and the Android: Netrunner CCG. :)\n\nIn my free time I do game development, including running a Discord server that focuses on helping new devs gain their skills quickly.';
}
