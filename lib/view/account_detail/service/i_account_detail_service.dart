import 'package:dio/dio.dart';
import '../model/account_detail_model.dart';

abstract class IAccountDetailService {
  final Dio service;

  IAccountDetailService(this.service);

  Future<List<AccountDetailsModel>> fetchAccountDetails();
}
