part of '../../view/profile_view.dart';

class _CustomListTile extends ListTile {
  _CustomListTile({
    required String text,
    required IconData icon,
  }) : super(
          leading: GreyContainer(
            child: Icon(
              icon,
              color: AppColors.darkGrey,
            ),
          ),
          title: Headline5Text(
            text: text,
            color: AppColors.darkGrey,
          ),
        );
}
