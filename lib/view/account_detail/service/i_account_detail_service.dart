import 'package:dio/dio.dart';
import 'package:ulusal_faktoring_case/view/account_detail/model/account_detail_model.dart';

abstract class IAccountDetailService {
  final Dio service;

  IAccountDetailService(this.service);

  Future<List<AccountDetailsModel>> fetchAccountDetails();
}
