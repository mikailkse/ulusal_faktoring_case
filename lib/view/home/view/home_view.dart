import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:ulusal_faktoring_case/core/components/text/body/body_small_text.dart';

import '../../../core/components/appbar/base_app_bar.dart';
import '../../../core/components/container/balance_card.dart';
import '../../../core/components/indicator/custom_indicator.dart';
import '../../../core/components/text/headline/headline2_text.dart';
import '../../../core/components/text/headline/headline4_text.dart';
import '../../../core/components/text/headline/headline5_text.dart';
import '../../../core/constants/color/app_colors.dart';
import '../../../core/constants/string/string_constants.dart';
import '../../../core/init/navigation/navigation_service.dart';
import '../../account_detail/view/account_detail_view.dart';

class HomeView extends StatelessWidget {
  static const routeName = 'homeView';
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 1, viewportFraction: 0.9);
    return Scaffold(
      appBar: BaseAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: controller,
                itemCount: 3,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => NavigationService.instance
                      .navigateToPage(AccountDetailView.routeName),
                  child: BalanceCard(
                    index: index,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Headline4Text(
                            text: StringConstants.balance,
                            color: AppColors.purple,
                          ),
                          Headline2Text(
                            text: StringConstants.iban,
                            color: AppColors.white,
                          ),
                          const SizedBox(height: 10),
                          Headline4Text(
                            text: StringConstants.totalPrice,
                            color: AppColors.purple,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            CustomIndicator(
              controller: controller,
              count: 3,
            ),
            GridView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3 / 4,
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: context.width / 6,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: AppColors.thinGray,
                      ),
                      color: AppColors.athensGray,
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                    child: Icon(
                      iconButton[index],
                      color: AppColors.lynch,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Headline5Text(
                    text: name[index],
                    textAlign: TextAlign.center,
                    color: AppColors.lynch,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Headline5Text(
                color: AppColors.lynch,
                text: 'Recent Activities',
              ),
              trailing: Icon(
                Icons.east,
                color: AppColors.blue,
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: const FlutterLogo(
                    size: 20,
                  ),
                  title: Headline5Text(
                    color: AppColors.lynch,
                    text: 'Netflix Membership',
                  ),
                  subtitle: BodySmallText(
                      text: '15.02.2021', color: AppColors.geyser),
                  trailing:
                      Headline5Text(color: AppColors.lynch, text: '- ₺ 29.90'),
                ),
                ListTile(
                  leading: const FlutterLogo(
                    size: 20,
                  ),
                  title: Headline5Text(
                    color: AppColors.lynch,
                    text: 'Turkcell Invoice',
                  ),
                  subtitle: BodySmallText(
                      text: '10.02.2021', color: AppColors.geyser),
                  trailing:
                      Headline5Text(color: AppColors.lynch, text: '- ₺ 65.00'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  final List<String> name = [
    StringConstants.sendMoney,
    StringConstants.qrActions,
    StringConstants.payBill,
  ];
  final List<IconData> iconButton = [
    Icons.wallet,
    Icons.qr_code,
    Icons.document_scanner
  ];
}
