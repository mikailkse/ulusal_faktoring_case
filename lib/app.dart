import 'package:flutter/material.dart';

import 'core/config/app_config.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/theme/theme.dart';
import 'view/_bottom_navbar/view/bottom_navbar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var dev = AppConfig.instance.enviroment.name;
    return MaterialApp(
      title: 'Ulusal Faktoring',
      theme: dark,
      debugShowCheckedModeBanner: dev != 'dev' ? false : true,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      home: const BottomNavbar(),
    );
  }
}
