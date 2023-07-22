import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/cart/presentation/pages/ui/cart_item.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';

import '../../../../routes/app_routes.enum.dart';
import '../../../common/constants/layout_constants.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late bool withPromoCode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace: BackTitleAppBar(title: 'Cart', callback: () {})),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: _listCard(),
            ),
            const ProcessOrder(withPromoCode: false),
          ],
        ),
      ),
    );
  }

  Widget _listCard() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Container(
            padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
            decoration: BoxDecoration(
              color: ColorPalette.greyScale50,
              borderRadius: BorderRadius.circular(LayoutConstants.radiusMedium),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Exchange Rate',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: ColorPalette.greyScale900,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      fontSize: FontsSize.medium,
                      fontFamily: Fonts.bold),
                ),
                SizedBox(height: LayoutConstants.paddingSmall),
                Text(
                  'USD 1 = XAF 695',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: ColorPalette.greyScale400,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      fontSize: FontsSize.small,
                      fontFamily: Fonts.medium),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: LayoutConstants.spacingLarge),
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CartItem(),
                CartItem(),
                CartItem(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _emptyCart() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(IconsName.emptyCart),
        const Text(
          'Your bag is empty',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: ColorPalette.greyScale900,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.1,
              fontSize: FontsSize.head4,
              fontFamily: Fonts.bold),
        ),
        const Padding(
          padding: EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Text(
            'When you add products, they’ll appear here.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: ColorPalette.greyScale400,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.1,
                fontSize: FontsSize.medium,
                fontFamily: Fonts.medium),
          ),
        ),
      ],
    );
  }
}
