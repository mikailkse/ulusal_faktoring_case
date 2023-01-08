import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../../core/components/container/appbariconcontainer.dart';
import '../../../core/components/container/balance_card.dart';
import '../../../core/components/indicator/custom_indicator.dart';
import '../../../core/components/loading/loading.dart';
import '../../../core/components/text/body/body_small_text.dart';
import '../../../core/components/text/headline/headline2_text.dart';
import '../../../core/components/text/headline/headline4_text.dart';
import '../../../core/components/text/headline/headline5_text.dart';
import '../../../core/constants/color/app_colors.dart';
import '../../../core/constants/icon/icon_constants.dart';
import '../../../core/constants/image/image_constants.dart';
import '../../../core/constants/string/string_constants.dart';
import '../../../core/extensions/string_extensions.dart';
import '../../../core/init/navigation/navigation_service.dart';
import '../../account_detail/view/account_detail_view.dart';
import '../viewmodel/home_view_model.dart';

part '../_widget/appbar/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = PageController(initialPage: 1, viewportFraction: 0.9);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeViewModel>().homeServiceInitState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _HomeAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _ListBalanceCards(controller: controller),
            const _ButtonCards(),
            _RecentActivities()
          ],
        ),
      ),
    );
  }
}

class _ListBalanceCards extends StatelessWidget {
  const _ListBalanceCards({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        SizedBox(
          height: 200,
          child: Consumer<HomeViewModel>(
            builder: (context, value, child) => PageView.builder(
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
                          text: '₺ 15,560.00',
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
        ),
        const SizedBox(height: 30),
        CustomIndicator(
          controller: controller,
          count: 3,
        ),
      ],
    );
  }
}

class _ButtonCards extends StatelessWidget {
  const _ButtonCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
              IconConstants.homeIconCard[index],
              color: AppColors.lynch,
            ),
          ),
          const SizedBox(height: 10),
          Headline5Text(
            text: StringConstants.homeButtonCard[index],
            textAlign: TextAlign.center,
            color: AppColors.lynch,
          ),
        ],
      ),
    );
  }
}

class _RecentActivities extends StatelessWidget {
  _RecentActivities();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        Consumer<HomeViewModel>(
          builder: (context, viewModel, child) => viewModel.isLoading == true
              ? const Loading()
              : Column(
                  children: List.generate(
                    viewModel.recentActivitiesModel.length,
                    (index) {
                      var recentActivitesModel =
                          viewModel.recentActivitiesModel[index];
                      return ListTile(
                        leading: Image.asset(
                          _recentActivitiesLogo[index],
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        title: Headline5Text(
                          color: AppColors.lynch,
                          text: recentActivitesModel.symbolName ?? '',
                        ),
                        subtitle: BodySmallText(
                          text: StringLocalization.dateFormat.format(
                            DateTime.parse(
                                recentActivitesModel.symbolDate.toString()),
                          ),
                          color: AppColors.geyser,
                        ),
                        trailing: Headline5Text(
                          text: '₺ ${recentActivitesModel.symbolAmount ?? ''}',
                          color: AppColors.lynch,
                        ),
                      );
                    },
                  ),
                ),
        ),
      ],
    );
  }

  final List<String> _recentActivitiesLogo = [
    ImageConstants.instance.netlixlogo,
    ImageConstants.instance.turkcellLogo,
    ImageConstants.instance.personLogo,
  ];
}
