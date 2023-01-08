import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/constants/image/image_constants.dart';
import '../../../core/init/navigation/navigation_service.dart';
import '../../_bottom_navbar/view/bottom_navbar.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      lowerBound: 0.2, duration: context.durationSlow, vsync: this)
    ..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => NavigationService.instance
          .navigateToPageClear(path: BottomNavbar.routeName),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset(
            ImageConstants.instance.ulusalfaktoring_logo,
          ),
        ),
      ),
    );
  }
}
