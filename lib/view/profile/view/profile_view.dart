import 'package:flutter/material.dart';

import '../../../core/components/container/grey_container.dart';
import '../../../core/components/text/headline/headline4_text.dart';
import '../../../core/components/text/headline/headline5_text.dart';
import '../../../core/constants/color/app_colors.dart';
import '../../../core/constants/icon/icon_constants.dart';
import '../../../core/constants/string/string_constants.dart';

part '../_widget/listtile/custom_listtile.dart';
part '../_widget/search/search_textformfield.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Headline5Text(text: 'Settings', color: AppColors.lynch),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        physics: BouncingScrollPhysics(),
        child: _ProfileListTile(),
      ),
    );
  }
}

class _ProfileListTile extends StatelessWidget {
  const _ProfileListTile();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _CustomTextFormField(),
        _emptyBox(),
        Headline4Text(text: 'Profil', color: AppColors.lynch),
        _emptyBoxProfile(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            2,
            (index) => _CustomListTile(
              icon: IconConstants.profileIcon[index],
              text: StringConstants.profileText[index],
            ),
          ),
        ),
        _emptyBox(),
        Headline4Text(text: 'Tercihler', color: AppColors.lynch),
        _emptyBoxProfile(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            3,
            (index) => _CustomListTile(
              icon: IconConstants.preferencesIcon[index],
              text: StringConstants.preferencesText[index],
            ),
          ),
        ),
        _emptyBox(),
        Headline4Text(text: 'Diğer', color: AppColors.lynch),
        _emptyBoxProfile(),
        _CustomListTile(
          text: StringConstants.profileDefinitions,
          icon: Icons.document_scanner,
        ),
      ],
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 50);
  SizedBox _emptyBoxProfile() => const SizedBox(height: 22);
}
