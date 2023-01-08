// ignore_for_file: constant_identifier_names

import 'package:ulusal_faktoring_case/core/constants/app/app_constants.dart';

enum NetworkRoutes {
  BASE_URL(AppConstants.BASEURL),
  RECENTACTIVITIES(AppConstants.RECENTACTIVITIES),
  ACCOUNTDETAILS(AppConstants.ACCOUNTDETAILS);

  final String route;

  const NetworkRoutes(this.route);

  String withBaseUrl() => BASE_URL.route + route;

  String withRecentActivities() => RECENTACTIVITIES.route;
  String withAccountDetails() => ACCOUNTDETAILS.route;
}
