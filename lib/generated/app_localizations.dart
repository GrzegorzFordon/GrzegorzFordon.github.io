import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
  ];

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Hi! I\'m Grzegorz.'**
  String get welcome;

  /// No description provided for @about_A.
  ///
  /// In en, this message translates to:
  /// **'A full-stack developer with a focus on the '**
  String get about_A;

  /// No description provided for @about_B.
  ///
  /// In en, this message translates to:
  /// **' Flutter framework.'**
  String get about_B;

  /// No description provided for @about_C.
  ///
  /// In en, this message translates to:
  /// **'Based in Berlin, Germany'**
  String get about_C;

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// No description provided for @personal.
  ///
  /// In en, this message translates to:
  /// **'Personal'**
  String get personal;

  /// No description provided for @promptwist_desc.
  ///
  /// In en, this message translates to:
  /// **'Stuck on a blank page? Try PrompTwist! A modular, responsive app that combines random themes with random color palettes for a fresh idea each time.'**
  String get promptwist_desc;

  /// No description provided for @promptwist_point_0.
  ///
  /// In en, this message translates to:
  /// **'State management with Riverpod'**
  String get promptwist_point_0;

  /// No description provided for @promptwist_point_1.
  ///
  /// In en, this message translates to:
  /// **'Cross platform - Released for Web, Mobile and Desktop'**
  String get promptwist_point_1;

  /// No description provided for @stitchin_time_desc.
  ///
  /// In en, this message translates to:
  /// **'Cross platform app for knitters/crocheters. Create charts using a fully-fledged pixel art editor, then switch to the row counter screen once ready to craft to let the app keep track of your progress.'**
  String get stitchin_time_desc;

  /// No description provided for @stitchin_time_point_0.
  ///
  /// In en, this message translates to:
  /// **'State management with Riverpod'**
  String get stitchin_time_point_0;

  /// No description provided for @stitchin_time_point_1.
  ///
  /// In en, this message translates to:
  /// **'SQL database with Drift'**
  String get stitchin_time_point_1;

  /// No description provided for @stitchin_time_point_2.
  ///
  /// In en, this message translates to:
  /// **'Navigation with GoRouter'**
  String get stitchin_time_point_2;

  /// No description provided for @submeowsions_desc.
  ///
  /// In en, this message translates to:
  /// **'My partner asked me to create a simple solution for keeping track of submissions to art/literature magazines. Submeowsions lets you curate your own database of works, publishers and submissions with quick options for accessing and editing submission data as well as a statistics page.'**
  String get submeowsions_desc;

  /// No description provided for @submeowsions_point0.
  ///
  /// In en, this message translates to:
  /// **'State management with Riverpod'**
  String get submeowsions_point0;

  /// No description provided for @submeowsions_point1.
  ///
  /// In en, this message translates to:
  /// **'Local storage and autosave with Hive'**
  String get submeowsions_point1;

  /// No description provided for @personal_desc.
  ///
  /// In en, this message translates to:
  /// **'I enjoy playing board games and cooking with friends. Some of my current favourites to play are Scythe, Coup and the Android: Netrunner CCG. :)\n\nIn my free time I do game development, including running a Discord server that focuses on helping new devs gain their skills quickly.'**
  String get personal_desc;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
