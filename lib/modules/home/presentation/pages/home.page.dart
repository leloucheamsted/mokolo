import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/widgets/appBar/app_bar.dart';
import 'package:mokolo/modules/home/presentation/pages/ui/shop_item.dart';
import 'package:mokolo/modules/home/presentation/pages/ui/home_app_bar.dart';

import '../../../common/constants/constants.dart';
import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/buttons/action_button.dart';
import '../bloc/fetch_store_list.bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final FetchStoreListBloc bloc = Modular.get();

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  void _loadData() {
    bloc.loadData();
  }

  @override
  Widget build(BuildContext context) {
    late bool connexionError = true;
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 30,
          flexibleSpace: const BlankAppBar()),
      body: SafeArea(
          child: connexionError
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(
                      LayoutConstants.paddingXlarge,
                      0,
                      LayoutConstants.paddingXlarge,
                      0),
                  child: Column(
                    children: [
                      const HomeAppBar(),
                      const SizedBox(height: LayoutConstants.spacingMedium),
                      Expanded(
                        child: MediaQuery.removeViewPadding(
                          context: context,
                          removeTop: true,
                          child: GridView.builder(
                              itemCount: 9,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              primary: false,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: LayoutConstants.spacingLarge,
                                crossAxisSpacing: LayoutConstants.spacingMedium,
                              ),
                              itemBuilder: (_, index) {
                                return const ShopItem();
                              }),
                        ),
                      ),
                      _requestStore()
                    ],
                  ),
                )
              : _connexionError()),
    );
  }

  Widget _connexionError() {
    return Padding(
      padding: const EdgeInsets.all(LayoutConstants.paddingXlarge * 2),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(IconsName.noconnexion),
            const SizedBox(height: LayoutConstants.spacingBig),
            const Text(
              'No Connection',
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontWeight: FontWeight.w600,
                  fontFamily: Fonts.bold,
                  fontSize: FontsSize.head4,
                  letterSpacing: 0.4),
            ),
            const Text(
              'No internet connection founds. Check your connection or try again.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorPalette.greyScale400,
                  fontWeight: FontWeight.w400,
                  fontFamily: Fonts.regular,
                  fontSize: FontsSize.medium,
                  letterSpacing: 0.4),
            ),
            const SizedBox(height: LayoutConstants.spacingLarge),
            ActionButton(title: 'Try Again', width: 150, onPressed: () {})
          ],
        ),
      ),
    );
  }

  Widget _requestStore() {
    return Container(
      padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
      decoration: BoxDecoration(
        color: ColorPalette.greyScale50,
        borderRadius: BorderRadius.circular(LayoutConstants.radiusMedium + 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Can’t find a store?',
            style: TextStyle(
              color: ColorPalette.greyScale900,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.bold,
              fontSize: FontsSize.large,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(height: LayoutConstants.spacingSmall),
          const Text(
            'Submit your preffered store to our team, we would review and add it the list of stores.',
            style: TextStyle(
              color: ColorPalette.greyScale400,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.medium,
              fontSize: FontsSize.medium,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(height: LayoutConstants.spacingLarge),
          Container(
            padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: ColorPalette.greyScale300,
              ),
              borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
            ),
            child: const Text(
              'Request a new store',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: ColorPalette.primaryBase,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.2,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.medium),
            ),
          ),
        ],
      ),
    );
  }
}
