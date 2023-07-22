import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';

import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/widgets.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace: BackTitleAppBar(title: 'Promo code', callback: () {})),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _promoCardItem(context, true),
                      _promoCardItem(context, false),
                      _promoCardItem(context, false),
                      _promoCardItem(context, false),
                      _promoCardItem(context, false),
                      _promoCardItem(context, false),
                    ],
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
                  decoration: BoxDecoration(
                    color: ColorPalette.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 10.0,
                          offset: const Offset(0, -10))
                    ],
                  ),
                  child: _codeControl())
            ],
          ),
        ),
      ),
    );
  }

  Widget _promoCardItem(context, bool ischeked) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingLarge,
          vertical: LayoutConstants.paddingSmall),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: ischeked
                ? ColorPalette.secondaryBase
                : ColorPalette.greyScale300,
          ),
          borderRadius: BorderRadius.circular(LayoutConstants.radiusLarge),
        ),
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(IconsName.money),
              const SizedBox(width: LayoutConstants.spacingMedium),
              Container(
                width: 1,
                height: 60,
                color: ColorPalette.greyScale200,
              ),
              const SizedBox(width: LayoutConstants.spacingMedium),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discount',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorPalette.greyScale900,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                        fontSize: FontsSize.small,
                        fontFamily: Fonts.medium),
                  ),
                  SizedBox(height: LayoutConstants.spacingXsmall / 2),
                  Text(
                    'Get 50% off',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorPalette.greyScale900,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                        fontSize: FontsSize.xlarge,
                        fontFamily: Fonts.bold),
                  ),
                  SizedBox(height: LayoutConstants.spacingXsmall / 2),
                  Text(
                    'Valid until July 14,2022',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorPalette.greyScale400,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                        fontSize: FontsSize.small,
                        fontFamily: Fonts.medium),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _codeControl() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discount',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorPalette.greyScale400,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                  fontSize: FontsSize.medium,
                  fontFamily: Fonts.medium),
            ),
            Text(
              '_',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.bold),
            ),
          ],
        ),
        ActionButton(
            title: 'Proceed',
            onPressed: () {},
            width: MediaQuery.of(context).size.width / 2)
      ],
    );
  }
}
