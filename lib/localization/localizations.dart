import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_proj/localization/localization_en.dart';
import 'package:flutter_proj/localization/localization_vi.dart';

abstract class AppLocalizations {
  final String localeName;

  AppLocalizations(this.localeName);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  //InsertHere
  String get homeScreen;

  String get adult;

  String get child;

  String get infant;

  String get ageOfAdult;

  String get ageOfChild;

  String get ageOfInfant;

  String get connectionTimeoutException;

  String get sendTimeoutException;

  String get receiveTimeoutException;

  String get badCertificateException;

  String get badResponseException;

  String get cancelException;

  String get connectionErrorException;

  String get unknownException;

  String get cancel;

  String get apply;

  String get login;

  String get email;

  String get password;

  String get orSocialLogin;

  String get doNotHaveAnAccount;

  String get registerAnAccount;

  String get forgotPassword;

  String get resetPassword;

  String get home;

  String get allProperties;

  String get chatting;

  String get news;

  String get myPage;

  String get friendList;

  String get search;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) {
    return <String>['en', 'vi'].contains(locale.languageCode);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
