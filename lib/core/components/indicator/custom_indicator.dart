import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/color/app_colors.dart';

class CustomIndicator extends SmoothPageIndicator {
  CustomIndicator(
      {super.key, required PageController controller, required int count})
      : super(
          controller: controller,
          count: count,
          effect: ScrollingDotsEffect(
            dotHeight: 6,
            dotWidth: 6,
            dotColor: AppColors.geyser,
            activeDotColor: AppColors.darkGrey,
          ),
        );
}
