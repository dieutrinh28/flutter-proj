import 'package:flutter_proj/routing/route_model.dart';

class RouteConstants {
  //
  static const RouteModel login = RouteModel(name: "login", path: "/login");

  //
  static const RouteModel home = RouteModel(name: "home", path: "/home");
  static const RouteModel allProperties = RouteModel(name: "allProperties", path: "/allProperties");
  static const RouteModel search = RouteModel(name: "search", path: "/search");
  static const RouteModel chatting = RouteModel(name: "chatting", path: "/chatting");
  static const RouteModel news = RouteModel(name: "news", path: "/news");
  static const RouteModel myPage = RouteModel(name: "myPage", path: "/myPage");

  // soc
  // social
  static const RouteModel friendList = RouteModel(name: "friendList", path: "friendList");

  // flight
  static const RouteModel flightHome = RouteModel(name: "flightHome", path: "flightHome");
  static const RouteModel searchResult = RouteModel(name: "searchResult", path: "searchResult");
  static const RouteModel flightDetail = RouteModel(name: "flightDetail", path: "flightDetail");
  static const RouteModel passengerInformation = RouteModel(name: "passengerInformation", path: "passengerInformation");
  static const RouteModel addons = RouteModel(name: "addons", path: "addons");
  static const RouteModel checkout = RouteModel(name: "checkout", path: "checkout");
  static const RouteModel policyHtml = RouteModel(name: "policyHtml", path: "policyHtml");
  static const RouteModel policyWebView = RouteModel(name: "policyWebView", path: "policyWebView");
}
