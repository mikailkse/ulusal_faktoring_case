import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';

class AppBarIconContainer extends Container {
  AppBarIconContainer({super.key, required IconData icon})
      : super(
          child: Icon(
            icon,
            color: AppColors.lynch,
          ),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              width: 1.5,
              color: AppColors.thinGray,
            ),
          ),
        );
}
