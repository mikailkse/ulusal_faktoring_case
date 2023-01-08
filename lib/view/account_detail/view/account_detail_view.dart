import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/container/appbariconcontainer.dart';
import '../../../core/components/loading/loading.dart';
import '../../../core/components/text/body/body_medium_text.dart';
import '../../../core/components/text/body/body_small_text.dart';
import '../../../core/components/text/headline/headline3_text.dart';
import '../../../core/components/text/headline/headline4_text.dart';
import '../../../core/components/text/headline/headline5_text.dart';
import '../../../core/constants/color/app_colors.dart';
import '../../../core/constants/image/image_constants.dart';
import '../../../core/constants/string/string_constants.dart';
import '../viewmodel/accont_detail_view_model.dart';

part '../_widget/appbar/account_detail_app_bar.dart';

class AccountDetailView extends StatefulWidget {
  static const routeName = 'accountDetailView';
  const AccountDetailView({super.key});

  @override
  State<AccountDetailView> createState() => _AccountDetailViewState();
}

class _AccountDetailViewState extends State<AccountDetailView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AccountDetailsViewModel>().accountDetailServiceInitState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AccountDetailAppBar(context: context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const _BalanceAccountDetail(),
            const _BalanceHeadline(),
            SizedBox(height: 200, child: _PurpleChart()),
            _ActivitiesListTile(recentActivitiesLogo: _recentActivitiesLogo)
          ],
        ),
      ),
    );
  }

  final List<String> _recentActivitiesLogo = [
    ImageConstants.instance.netlixlogo,
    ImageConstants.instance.turkcellLogo,
    ImageConstants.instance.personLogo,
  ];
}

class _BalanceAccountDetail extends StatelessWidget {
  const _BalanceAccountDetail();

  @override
  Widget build(BuildContext context) {
    return Consumer<AccountDetailsViewModel>(
      builder: (context, viewModel, child) => viewModel.isLoading == true
          ? const Loading()
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: viewModel.accountDetailsModel.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: BodyMediumText(
                    text: StringConstants.name[index],
                    color: AppColors.lynch,
                  ),
                  trailing: BodyMediumText(
                    text: viewModel.accountDetailsModel[index].accountNumber
                        .toString(),
                    color: AppColors.darkGrey,
                  ),
                );
              },
            ),
    );
  }
}

class _BalanceHeadline extends StatelessWidget {
  const _BalanceHeadline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Headline4Text(
          text: 'Balance',
          color: AppColors.darkGrey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Headline3Text(
              text: '₺ 15,560.00',
              color: AppColors.electricViolet,
            ),
            Row(
              children: [
                Headline3Text(
                  text: 'Oct - Feb',
                  color: AppColors.electricViolet,
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: AppColors.darkGrey,
                  size: 40,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

class _ActivitiesListTile extends StatelessWidget {
  const _ActivitiesListTile({
    Key? key,
    required List<String> recentActivitiesLogo,
  })  : _recentActivitiesLogo = recentActivitiesLogo,
        super(key: key);

  final List<String> _recentActivitiesLogo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Headline5Text(
            color: AppColors.lynch,
            text: 'Activities',
          ),
          trailing: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Headline5Text(
                text: 'January',
                color: AppColors.darkGrey,
              ),
              Icon(
                Icons.arrow_drop_down_rounded,
                color: AppColors.darkGrey,
              ),
            ],
          ),
        ),
        Column(
          children: List.generate(
            3,
            (index) => ListTile(
              leading: Image.asset(
                _recentActivitiesLogo[index],
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
              title: Headline5Text(
                color: AppColors.lynch,
                text: StringConstants.accountDetailsActivitiesTitle[index],
              ),
              subtitle: BodySmallText(
                text: StringConstants.accountDetailsActivitiesSubTitle[index],
                color: AppColors.geyser,
              ),
              trailing: Headline5Text(
                text: StringConstants.accountDetailsActivitiesTrailing[index],
                color: AppColors.lynch,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PurpleChart extends LineChart {
  _PurpleChart()
      : super(
          swapAnimationCurve: Curves.easeIn,
          swapAnimationDuration: const Duration(milliseconds: 150),
          LineChartData(
            minX: 0,
            maxY: 7,
            maxX: 11,
            minY: 0,
            titlesData: FlTitlesData(
              show: false,
            ),
            gridData: FlGridData(
              show: false,
              drawVerticalLine: false,
            ),
            borderData: FlBorderData(
              show: false,
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(0, 3),
                  const FlSpot(2.6, 2),
                  const FlSpot(4.9, 5),
                  const FlSpot(6.8, 2.5),
                  const FlSpot(8, 4),
                  const FlSpot(9.5, 3),
                  const FlSpot(11, 4),
                ],
                isCurved: true,
                barWidth: 3,
                color: AppColors.electricViolet,
                dotData: FlDotData(
                  show: false,
                ),
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.electricViolet.withOpacity(0.3),
                      AppColors.white,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ],
          ),
        );
}
