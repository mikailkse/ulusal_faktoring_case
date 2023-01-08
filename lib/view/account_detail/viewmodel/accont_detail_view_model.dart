import 'package:dio/dio.dart';
import 'package:ulusal_faktoring_case/core/common/viewmodel/base_view_model.dart';
import 'package:ulusal_faktoring_case/view/account_detail/model/account_detail_model.dart';
import 'package:ulusal_faktoring_case/view/account_detail/service/account_detail_service.dart';

import '../../../core/utility/network_routes.dart';

class AccountDetailsViewModel extends BaseViewModel {
  AccountDetailService? service;

  accountDetailServiceInitState() {
    service = AccountDetailService(
      Dio(
        BaseOptions(baseUrl: NetworkRoutes.BASE_URL.route),
      ),
    );
    accountDetailGet();
    notifyListeners();
  }

  List<AccountDetailsModel> accountDetailsModel = [];

  Future<List<AccountDetailsModel?>> accountDetailGet() async {
    changeIsLoading();
    final response = await service?.fetchAccountDetails();
    accountDetailsModel = response!;
    notifyListeners();
    changeIsLoading();
    return response;
  }
}
