import 'package:flutter_proj/localization/localizations.dart';

class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  //InsertHere
  @override
  String get homeScreen => "Home";

  @override
  String get adult => "Adult";

  @override
  String get child => "Child";

  @override
  String get infant => "Infant";

  @override
  String get ageOfAdult => "> 11 years old";

  @override
  String get ageOfChild => "2-11 years old";

  @override
  String get ageOfInfant => "< 2 years old";

  @override
  String get connectionTimeoutException =>
      "Connection timeout error, please check your network.";

  @override
  String get sendTimeoutException =>
      "Send timeout in connection with API server, please check your network.";

  @override
  String get receiveTimeoutException =>
      "Receive timeout in connection with API server, please check your network.";

  @override
  String get badCertificateException => "Bad certificate.";

  @override
  String get badResponseException => "Bad response.";

  @override
  String get cancelException => "Request to API server was cancelled.";

  @override
  String get connectionErrorException => "Connection error.";

  @override
  String get unknownException => "Something went wrong.";

  @override
  String get cancel => "Huỷ bỏ";

  @override
  String get apply => "Áp dụng";

  @override
  String get login => "Login";

  @override
  String get email => "Email";

  @override
  String get password => "Password";

  @override
  String get orSocialLogin => "or social login";

  @override
  String get doNotHaveAnAccount => "Don't have an account?";

  @override
  String get registerAnAccount => "Register an account";

  @override
  String get forgotPassword => "Forgot password?";

  @override
  String get resetPassword => "Reset password";

  @override
  String get home => "Home";

  @override
  String get allProperties => "All properties";

  @override
  String get chatting => "Chatting";

  @override
  String get news => "News";

  @override
  String get myPage => "My Page";

  @override
  String get friendList => "Friend list";

  @override
  String get search => "Search";
}
