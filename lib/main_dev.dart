import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'core/common/viewmodel/base_view_model.dart';
import 'core/config/app_config.dart';
import 'view/_bottom_navbar/viewmodel/bottom_navbar_viewmodel.dart';
import 'view/account_detail/viewmodel/accont_detail_view_model.dart';
import 'view/home/viewmodel/home_view_model.dart';

Future<void> main() async {
  AppConfig.instance.setDevParameters();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BaseViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNavbarViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => AccountDetailsViewModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
