import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';

import '../../../../routes/app_routes.enum.dart';
import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/widgets.dart';

class ShippingPage extends StatelessWidget {
  const ShippingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace:
              BackTitleAppBar(title: 'Shipping information', callback: () {})),
      backgroundColor: ColorPalette.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: LayoutConstants.spacingLarge),
                  _chooseAddress(),
                  const SizedBox(height: LayoutConstants.spacingSmall + 2),
                  _shipment(),
                  const SizedBox(height: LayoutConstants.spacingSmall + 2),
                  _summary(),
                ],
              ),
            ),
          ),
          const ProcessOrder(withPromoCode: true)
        ],
      )),
    );
  }

  Widget _chooseAddress() {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingLarge),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Choose Delivery Address',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: ColorPalette.greyScale900,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
                fontSize: FontsSize.large,
                fontFamily: Fonts.bold),
          ),
          const SizedBox(height: LayoutConstants.spacingMedium),
          InkWell(
            onTap: () {
              Modular.to.pushNamed(AppRoute.address.path);
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(IconsName.map),
                      const SizedBox(width: LayoutConstants.spacingSmall),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Home',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: ColorPalette.greyScale900,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.2,
                                fontSize: FontsSize.medium,
                                fontFamily: Fonts.bold),
                          ),
                          Text(
                            'Rue mermoz, Akwa',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: ColorPalette.greyScale400,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.2,
                                fontSize: FontsSize.medium,
                                fontFamily: Fonts.medium),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SvgPicture.asset(IconsName.chevronRight)
                  //Image.asset(ImagesName.map),
                ]),
          ),
          const SizedBox(height: LayoutConstants.spacingSmall + 2),
          const Divider(
            height: 1,
            color: ColorPalette.greyScale100,
          ),
        ],
      ),
    );
  }

  Widget _shipment() {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingLarge),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Shipment',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.2,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.bold),
            ),
            const SizedBox(height: LayoutConstants.spacingMedium),
            Container(
              padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: ColorPalette.greyScale300,
                ),
                borderRadius:
                    BorderRadius.circular(LayoutConstants.radiusLarge),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(IconsName.truckDelivery),
                            const SizedBox(width: LayoutConstants.spacingSmall),
                            const Text(
                              'Standard Delivery',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: ColorPalette.greyScale900,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.2,
                                  fontSize: FontsSize.medium,
                                  fontFamily: Fonts.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: LayoutConstants.spacingSmall),
                        const Text(
                          'Arrives in 7-10 business day',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: ColorPalette.greyScale400,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.2,
                              fontSize: FontsSize.medium,
                              fontFamily: Fonts.medium),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'XAF 2,000',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: ColorPalette.greyScale900,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                        fontSize: FontsSize.medium,
                        fontFamily: Fonts.bold),
                  ),
                ],
              ),
            )
          ]),
    );
  }

  Widget _summary() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: LayoutConstants.paddingLarge),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Summary',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: ColorPalette.greyScale900,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
                fontSize: FontsSize.large,
                fontFamily: Fonts.bold),
          ),
          SizedBox(height: LayoutConstants.spacingMedium),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Subtotal',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: ColorPalette.greyScale400,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                        fontSize: FontsSize.medium,
                        fontFamily: Fonts.medium),
                  ),
                  Text(
                    '\$84.96',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: ColorPalette.greyScale900,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.2,
                        fontSize: FontsSize.large,
                        fontFamily: Fonts.bold),
                  ),
                ],
              ),
              SizedBox(height: LayoutConstants.spacingXsmall),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Delivery Fee',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: ColorPalette.greyScale400,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                        fontSize: FontsSize.medium,
                        fontFamily: Fonts.medium),
                  ),
                  Text(
                    '\$14.96',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: ColorPalette.greyScale900,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.2,
                        fontSize: FontsSize.large,
                        fontFamily: Fonts.bold),
                  ),
                ],
              ),
              SizedBox(height: LayoutConstants.spacingXsmall),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Shipping Insurance',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: ColorPalette.greyScale400,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                        fontSize: FontsSize.medium,
                        fontFamily: Fonts.medium),
                  ),
                  Text(
                    '\$84.96',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: ColorPalette.greyScale900,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.2,
                        fontSize: FontsSize.large,
                        fontFamily: Fonts.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
