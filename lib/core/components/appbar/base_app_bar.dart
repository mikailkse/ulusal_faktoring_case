import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';
import '../../constants/string/string_constants.dart';
import '../container/appbariconcontainer.dart';
import '../text/headline/headline5_text.dart';

class BaseAppBar extends AppBar {
  BaseAppBar({super.key})
      : super(
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AppBarIconContainer(
                icon: Icons.notifications,
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: 7),
            child: AppBarIconContainer(
              icon: Icons.settings,
            ),
          ),
          title: Headline5Text(
            color: AppColors.lynch,
            text: StringConstants.home,
          ),
        );
}
