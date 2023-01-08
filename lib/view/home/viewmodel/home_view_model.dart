import 'package:dio/dio.dart';

import '../../../core/common/viewmodel/base_view_model.dart';
import '../../../core/utility/network_routes.dart';
import '../model/recent_activities_model.dart';
import '../service/home_service.dart';

class HomeViewModel extends BaseViewModel {
  HomeService? service;

  homeServiceInitState() {
    service = HomeService(
      Dio(
        BaseOptions(baseUrl: NetworkRoutes.BASE_URL.route),
      ),
    );
    recentActivitiesGet();
    notifyListeners();
  }

  List<RecentActivitiesModel> recentActivitiesModel = [];

  Future<List<RecentActivitiesModel?>> recentActivitiesGet() async {
    changeIsLoading();
    final response = await service?.fetchRecentActivites();
    recentActivitiesModel = response!;
    notifyListeners();
    changeIsLoading();
    return response;
  }
}
