part of '../../view/account_detail_view.dart';

class _AccountDetailAppBar extends AppBar {
  _AccountDetailAppBar({required BuildContext context})
      : super(
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 7),
            child: AppBarIconContainer(
              icon: Icons.arrow_back,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          title: Headline5Text(
            color: AppColors.lynch,
            text: StringConstants.accountDetail,
          ),
        );
}
