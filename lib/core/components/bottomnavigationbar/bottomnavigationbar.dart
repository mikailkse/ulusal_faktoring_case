import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../view/_bottom_navbar/viewmodel/bottom_navbar_viewmodel.dart';
import '../../constants/color/app_colors.dart';

class CustomBottomNavigationBar extends BottomNavigationBar {
  CustomBottomNavigationBar({super.key, required BuildContext context})
      : super(
          showSelectedLabels: false,
          selectedFontSize: 0,
          showUnselectedLabels: false,
          elevation: 0,
          iconSize: 30,
          selectedIconTheme: IconThemeData(color: AppColors.blue),
          unselectedIconTheme: IconThemeData(color: AppColors.lightGray),
          selectedItemColor: Colors.red,
          currentIndex: context.read<BottomNavbarViewModel>().selectedIndex,
          onTap: context.read<BottomNavbarViewModel>().onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.white,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: '',
            ),
          ],
        );
}
