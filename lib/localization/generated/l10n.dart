// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Calendar`
  String get bottomMenuCalendar {
    return Intl.message(
      'Calendar',
      name: 'bottomMenuCalendar',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get bottomMenuToday {
    return Intl.message(
      'Today',
      name: 'bottomMenuToday',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get saveButton {
    return Intl.message(
      'Save',
      name: 'saveButton',
      desc: '',
      args: [],
    );
  }

  /// `Pill Name`
  String get pillName {
    return Intl.message(
      'Pill Name',
      name: 'pillName',
      desc: '',
      args: [],
    );
  }

  /// `Enter the name of pill`
  String get pillNameHint {
    return Intl.message(
      'Enter the name of pill',
      name: 'pillNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Usage Phase`
  String get pillUsagePhase {
    return Intl.message(
      'Usage Phase',
      name: 'pillUsagePhase',
      desc: '',
      args: [],
    );
  }

  /// `Days`
  String get pillUsagePhaseDay {
    return Intl.message(
      'Days',
      name: 'pillUsagePhaseDay',
      desc: '',
      args: [],
    );
  }

  /// `Weeks`
  String get pillUsagePhaseWeek {
    return Intl.message(
      'Weeks',
      name: 'pillUsagePhaseWeek',
      desc: '',
      args: [],
    );
  }

  /// `Months`
  String get pillUsagePhaseMonth {
    return Intl.message(
      'Months',
      name: 'pillUsagePhaseMonth',
      desc: '',
      args: [],
    );
  }

  /// `Non-stop`
  String get pillUsagePhaseNonStop {
    return Intl.message(
      'Non-stop',
      name: 'pillUsagePhaseNonStop',
      desc: '',
      args: [],
    );
  }

  /// `Break Phase`
  String get pillBreakPhase {
    return Intl.message(
      'Break Phase',
      name: 'pillBreakPhase',
      desc: '',
      args: [],
    );
  }

  /// `Days`
  String get pillBreakPhaseDay {
    return Intl.message(
      'Days',
      name: 'pillBreakPhaseDay',
      desc: '',
      args: [],
    );
  }

  /// `Weeks`
  String get pillBreakPhaseWeek {
    return Intl.message(
      'Weeks',
      name: 'pillBreakPhaseWeek',
      desc: '',
      args: [],
    );
  }

  /// `Months`
  String get pillBreakPhaseMonth {
    return Intl.message(
      'Months',
      name: 'pillBreakPhaseMonth',
      desc: '',
      args: [],
    );
  }

  /// `When Take`
  String get pillWhenTake {
    return Intl.message(
      'When Take',
      name: 'pillWhenTake',
      desc: '',
      args: [],
    );
  }

  /// `On Walking`
  String get pillWhenTakeOnWalking {
    return Intl.message(
      'On Walking',
      name: 'pillWhenTakeOnWalking',
      desc: '',
      args: [],
    );
  }

  /// `Between Meals`
  String get pillWhenTakeBetweenMeals {
    return Intl.message(
      'Between Meals',
      name: 'pillWhenTakeBetweenMeals',
      desc: '',
      args: [],
    );
  }

  /// `With Breakfast`
  String get pillWhenTakeWithBreakfast {
    return Intl.message(
      'With Breakfast',
      name: 'pillWhenTakeWithBreakfast',
      desc: '',
      args: [],
    );
  }

  /// `With Lunch`
  String get pillWhenTakeWithLunch {
    return Intl.message(
      'With Lunch',
      name: 'pillWhenTakeWithLunch',
      desc: '',
      args: [],
    );
  }

  /// `With Dinner`
  String get pillWhenTakeWithDinner {
    return Intl.message(
      'With Dinner',
      name: 'pillWhenTakeWithDinner',
      desc: '',
      args: [],
    );
  }

  /// `Before Sleep`
  String get pillWhenTakeWithDinnerBeforeSleep {
    return Intl.message(
      'Before Sleep',
      name: 'pillWhenTakeWithDinnerBeforeSleep',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get pillWhenTakeAdd {
    return Intl.message(
      'Add',
      name: 'pillWhenTakeAdd',
      desc: '',
      args: [],
    );
  }

  /// `Take Every`
  String get pillTakeEvery {
    return Intl.message(
      'Take Every',
      name: 'pillTakeEvery',
      desc: '',
      args: [],
    );
  }

  /// `Days`
  String get pillTakeEveryDay {
    return Intl.message(
      'Days',
      name: 'pillTakeEveryDay',
      desc: '',
      args: [],
    );
  }

  /// `Weeks`
  String get pillTakeEveryWeek {
    return Intl.message(
      'Weeks',
      name: 'pillTakeEveryWeek',
      desc: '',
      args: [],
    );
  }

  /// `Months`
  String get pillTakeEveryMonth {
    return Intl.message(
      'Months',
      name: 'pillTakeEveryMonth',
      desc: '',
      args: [],
    );
  }

  /// `Select Pill Type`
  String get selectPillType {
    return Intl.message(
      'Select Pill Type',
      name: 'selectPillType',
      desc: '',
      args: [],
    );
  }

  /// `Tablets`
  String get selectPillTypeTablet {
    return Intl.message(
      'Tablets',
      name: 'selectPillTypeTablet',
      desc: '',
      args: [],
    );
  }

  /// `Capsule`
  String get selectPillTypeCapsule {
    return Intl.message(
      'Capsule',
      name: 'selectPillTypeCapsule',
      desc: '',
      args: [],
    );
  }

  /// `Advanced Settings`
  String get advancedSettings {
    return Intl.message(
      'Advanced Settings',
      name: 'advancedSettings',
      desc: '',
      args: [],
    );
  }

  /// `One Tablet/Capsule Weight `
  String get pillWeight {
    return Intl.message(
      'One Tablet/Capsule Weight ',
      name: 'pillWeight',
      desc: '',
      args: [],
    );
  }

  /// `Enter the weight of one tablet/capsule`
  String get pillWeightHint {
    return Intl.message(
      'Enter the weight of one tablet/capsule',
      name: 'pillWeightHint',
      desc: '',
      args: [],
    );
  }

  /// `mg`
  String get dosageInMg {
    return Intl.message(
      'mg',
      name: 'dosageInMg',
      desc: '',
      args: [],
    );
  }

  /// `Select Pill Color Tag (For Calendar View)`
  String get selectPillColorTag {
    return Intl.message(
      'Select Pill Color Tag (For Calendar View)',
      name: 'selectPillColorTag',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get deleteButton {
    return Intl.message(
      'Delete',
      name: 'deleteButton',
      desc: '',
      args: [],
    );
  }

  /// `2023`
  String get currentYear {
    return Intl.message(
      '2023',
      name: 'currentYear',
      desc: '',
      args: [],
    );
  }

  /// `JAN`
  String get calendarMonthJanuaryShort {
    return Intl.message(
      'JAN',
      name: 'calendarMonthJanuaryShort',
      desc: '',
      args: [],
    );
  }

  /// `FEB`
  String get calendarMonthFebruaryShort {
    return Intl.message(
      'FEB',
      name: 'calendarMonthFebruaryShort',
      desc: '',
      args: [],
    );
  }

  /// `MAR`
  String get calendarMonthMarchShort {
    return Intl.message(
      'MAR',
      name: 'calendarMonthMarchShort',
      desc: '',
      args: [],
    );
  }

  /// `APR`
  String get calendarMonthAprilShort {
    return Intl.message(
      'APR',
      name: 'calendarMonthAprilShort',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get calendarMonthMayShort {
    return Intl.message(
      'May',
      name: 'calendarMonthMayShort',
      desc: '',
      args: [],
    );
  }

  /// `JUN`
  String get calendarMonthJuneShort {
    return Intl.message(
      'JUN',
      name: 'calendarMonthJuneShort',
      desc: '',
      args: [],
    );
  }

  /// `JUL`
  String get calendarMonthJulyShort {
    return Intl.message(
      'JUL',
      name: 'calendarMonthJulyShort',
      desc: '',
      args: [],
    );
  }

  /// `AUG`
  String get calendarMonthAugustShort {
    return Intl.message(
      'AUG',
      name: 'calendarMonthAugustShort',
      desc: '',
      args: [],
    );
  }

  /// `SEPT`
  String get calendarMonthSeptemberShort {
    return Intl.message(
      'SEPT',
      name: 'calendarMonthSeptemberShort',
      desc: '',
      args: [],
    );
  }

  /// `NOV`
  String get calendarMonthNovemberShort {
    return Intl.message(
      'NOV',
      name: 'calendarMonthNovemberShort',
      desc: '',
      args: [],
    );
  }

  /// `DEC`
  String get calendarMonthDecemberShort {
    return Intl.message(
      'DEC',
      name: 'calendarMonthDecemberShort',
      desc: '',
      args: [],
    );
  }

  /// `January`
  String get calendarMonthJanuary {
    return Intl.message(
      'January',
      name: 'calendarMonthJanuary',
      desc: '',
      args: [],
    );
  }

  /// `February`
  String get calendarMonthFebruary {
    return Intl.message(
      'February',
      name: 'calendarMonthFebruary',
      desc: '',
      args: [],
    );
  }

  /// `March`
  String get calendarMonthMarch {
    return Intl.message(
      'March',
      name: 'calendarMonthMarch',
      desc: '',
      args: [],
    );
  }

  /// `April`
  String get calendarMonthApril {
    return Intl.message(
      'April',
      name: 'calendarMonthApril',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get calendarMonthMay {
    return Intl.message(
      'May',
      name: 'calendarMonthMay',
      desc: '',
      args: [],
    );
  }

  /// `June`
  String get calendarMonthJune {
    return Intl.message(
      'June',
      name: 'calendarMonthJune',
      desc: '',
      args: [],
    );
  }

  /// `July`
  String get calendarMonthJuly {
    return Intl.message(
      'July',
      name: 'calendarMonthJuly',
      desc: '',
      args: [],
    );
  }

  /// `August`
  String get calendarMonthAugust {
    return Intl.message(
      'August',
      name: 'calendarMonthAugust',
      desc: '',
      args: [],
    );
  }

  /// `September`
  String get calendarMonthSeptember {
    return Intl.message(
      'September',
      name: 'calendarMonthSeptember',
      desc: '',
      args: [],
    );
  }

  /// `November`
  String get calendarMonthNovember {
    return Intl.message(
      'November',
      name: 'calendarMonthNovember',
      desc: '',
      args: [],
    );
  }

  /// `December`
  String get calendarMonthDecember {
    return Intl.message(
      'December',
      name: 'calendarMonthDecember',
      desc: '',
      args: [],
    );
  }

  /// `Don’t save the changes?`
  String get dontSaveChangesWarning {
    return Intl.message(
      'Don’t save the changes?',
      name: 'dontSaveChangesWarning',
      desc: '',
      args: [],
    );
  }

  /// `Your changes will be not applied here`
  String get changesNotApplied {
    return Intl.message(
      'Your changes will be not applied here',
      name: 'changesNotApplied',
      desc: '',
      args: [],
    );
  }

  /// `Save the changes`
  String get saveChangesButton {
    return Intl.message(
      'Save the changes',
      name: 'saveChangesButton',
      desc: '',
      args: [],
    );
  }

  /// `Leave and don’t save`
  String get leaveButton {
    return Intl.message(
      'Leave and don’t save',
      name: 'leaveButton',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get doneButton {
    return Intl.message(
      'Done',
      name: 'doneButton',
      desc: '',
      args: [],
    );
  }

  /// `Today To Do`
  String get todayScreenTitle {
    return Intl.message(
      'Today To Do',
      name: 'todayScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Pill Information`
  String get pillInformationTitle {
    return Intl.message(
      'Pill Information',
      name: 'pillInformationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit Information`
  String get editInformationTitle {
    return Intl.message(
      'Edit Information',
      name: 'editInformationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Done at {time}`
  String pillStatusDone(Object time) {
    return Intl.message(
      'Done at $time',
      name: 'pillStatusDone',
      desc: '',
      args: [time],
    );
  }

  /// `Skipped`
  String get pillStatusSkipped {
    return Intl.message(
      'Skipped',
      name: 'pillStatusSkipped',
      desc: '',
      args: [],
    );
  }

  /// `Show Advanced Settings`
  String get showAdvancedSettings {
    return Intl.message(
      'Show Advanced Settings',
      name: 'showAdvancedSettings',
      desc: '',
      args: [],
    );
  }

  /// `1`
  String get num1 {
    return Intl.message(
      '1',
      name: 'num1',
      desc: '',
      args: [],
    );
  }

  /// `2`
  String get num2 {
    return Intl.message(
      '2',
      name: 'num2',
      desc: '',
      args: [],
    );
  }

  /// `3`
  String get num3 {
    return Intl.message(
      '3',
      name: 'num3',
      desc: '',
      args: [],
    );
  }

  /// `4`
  String get num4 {
    return Intl.message(
      '4',
      name: 'num4',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
