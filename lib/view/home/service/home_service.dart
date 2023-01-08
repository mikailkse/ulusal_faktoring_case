import 'dart:core';
import 'dart:developer';
import 'dart:io';

import '../../../core/utility/network_routes.dart';
import '../model/recent_activities_model.dart';
import 'i_home_service.dart';

import '../../../core/init/network/network/service_helper.dart';

class HomeService extends IHomeService with ServiceHelper {
  HomeService(super.service);

  @override
  Future<List<RecentActivitiesModel>> fetchRecentActivites() async {
    final response =
        await service.get(NetworkRoutes.RECENTACTIVITIES.withBaseUrl());
    if (response.statusCode == HttpStatus.ok) {
      inspect(response);
      final responseData = response.data;
      List<RecentActivitiesModel> recentActivities = [];
      for (var activity in responseData) {
        recentActivities.add(RecentActivitiesModel.fromJson(activity));
      }
      return recentActivities;
    } else {
      return [];
    }
  }
}
