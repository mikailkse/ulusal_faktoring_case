import 'dart:core';
import 'dart:developer';
import 'dart:io';

import 'package:ulusal_faktoring_case/view/account_detail/model/account_detail_model.dart';
import 'package:ulusal_faktoring_case/view/account_detail/service/i_account_detail_service.dart';

import '../../../core/init/network/network/service_helper.dart';
import '../../../core/utility/network_routes.dart';

class AccountDetailService extends IAccountDetailService with ServiceHelper {
  AccountDetailService(super.service);

  @override
  Future<List<AccountDetailsModel>> fetchAccountDetails() async {
    final response =
        await service.get(NetworkRoutes.ACCOUNTDETAILS.withBaseUrl());
    if (response.statusCode == HttpStatus.ok) {
      inspect(response);
      final responseData = response.data;
      List<AccountDetailsModel> accountDetailsModel = [];
      for (var activity in responseData) {
        accountDetailsModel.add(AccountDetailsModel.fromJson(activity));
      }
      return accountDetailsModel;
    } else {
      return [];
    }
  }
}
