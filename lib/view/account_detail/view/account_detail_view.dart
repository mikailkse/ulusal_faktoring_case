import 'package:flutter/material.dart';
import 'package:ulusal_faktoring_case/core/components/appbar/base_app_bar.dart';

class AccountDetailView extends StatelessWidget {
  static const routeName = 'accountDetailView';
  const AccountDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
    );
  }
}
