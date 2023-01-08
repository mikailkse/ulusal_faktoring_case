import 'package:dio/dio.dart';

import '../model/recent_activities_model.dart';

abstract class IHomeService {
  final Dio service;

  IHomeService(this.service);

  Future<List<RecentActivitiesModel>> fetchRecentActivites();
}
