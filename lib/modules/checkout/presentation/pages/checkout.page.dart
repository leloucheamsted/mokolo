import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/checkout/presentation/pages/ui/payment_method_item.dart';

import '../../../../routes/app_routes.enum.dart';
import '../../../common/constants/constants.dart';
import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/appBar/back_title_app_bar.dart';
import '../../../common/widgets/process_order.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace: BackTitleAppBar(title: 'Checkout', callback: () {})),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _payment(),
                      const SizedBox(height: LayoutConstants.spacingBig * 2),
                      _summary(),
                    ],
                  ),
                ),
              ),
            ),
            const ProcessOrder(withPromoCode: false),
          ],
        ),
      ),
    );
  }

  Widget _payment() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Payment Method',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.bold),
            ),
            InkWell(
              onTap: () {
                Modular.to.pushNamed(AppRoute.newpayment.path);
              },
              child: const Text(
                'Add New',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: ColorPalette.secondaryBase,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.1,
                    fontSize: FontsSize.medium,
                    fontFamily: Fonts.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: LayoutConstants.spacingXsmall),
        const Column(
          children: [
            PaymentMethodItem(
              name: 'Orange Money',
              number: '697877656',
              icon: ImagesName.orange,
              isChoice: true,
            ),
            PaymentMethodItem(
              name: 'MTN MOMO',
              number: '682421795',
              icon: ImagesName.mtn,
              isChoice: false,
            )
          ],
        )
      ],
    );
  }

  Widget _summary() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Order Summary',
          textAlign: TextAlign.start,
          style: TextStyle(
              color: ColorPalette.greyScale900,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.1,
              fontSize: FontsSize.large,
              fontFamily: Fonts.bold),
        ),
        SizedBox(height: LayoutConstants.spacingMedium),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              'XAF 50,000',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                  fontSize: FontsSize.medium,
                  fontFamily: Fonts.bold),
            ),
          ],
        ),
        SizedBox(height: LayoutConstants.spacingXsmall),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              'XAF 2,000',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                  fontSize: FontsSize.medium,
                  fontFamily: Fonts.bold),
            ),
          ],
        ),
        SizedBox(height: LayoutConstants.spacingXsmall),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shoppa Fee',
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
              'XAF 5,000',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                  fontSize: FontsSize.medium,
                  fontFamily: Fonts.bold),
            ),
          ],
        )
      ],
    );
  }
}
