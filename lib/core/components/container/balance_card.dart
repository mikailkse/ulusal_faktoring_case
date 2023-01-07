import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';

class BalanceCard extends Container {
  BalanceCard({
    required Widget child,
    required int index,
    super.key,
  }) : super(
          child: child,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backgroundColor[index],
          ),
        );
}

List<Color> backgroundColor = [
  AppColors.dodgerBlue,
  AppColors.electricViolet,
  AppColors.orange,
];
