part of '../../view/home_view.dart';

class _HomeAppBar extends AppBar {
  _HomeAppBar()
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
