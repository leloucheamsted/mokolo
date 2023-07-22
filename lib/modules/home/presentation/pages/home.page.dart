import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/home/presentation/pages/ui/shop_item.dart';
import 'package:mokolo/modules/home/presentation/pages/ui/home_app_bar.dart';

import '../../../common/constants/constants.dart';
import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/buttons/action_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    late bool connexionError = true;
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace: const HomeAppBar()),
      body: SafeArea(
          child: connexionError
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(
                      LayoutConstants.paddingXlarge,
                      LayoutConstants.paddingXlarge,
                      LayoutConstants.paddingXlarge,
                      0),
                  child: MediaQuery.removeViewPadding(
                    context: context,
                    removeTop: true,
                    child: GridView.builder(
                        itemCount: 16,
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
          crossAxisAlignment: CrossAxisAlignment.center,
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
}
