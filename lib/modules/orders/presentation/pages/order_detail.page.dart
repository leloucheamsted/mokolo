import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/constants/constants.dart';
import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/appBar/back_title_app_bar.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace:
              BackTitleAppBar(title: 'Order Details', callback: () {})),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _orderStatuts(),
                const SizedBox(height: LayoutConstants.spacingMedium),
                _userInfo(),
                const SizedBox(height: LayoutConstants.spacingMedium),
                _purchaseItem(),
                const SizedBox(height: LayoutConstants.spacingMedium),
                _shippingInfo(),
                const SizedBox(height: LayoutConstants.spacingMedium),
                _paymentInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _orderStatuts() {
    return Container(
        decoration: BoxDecoration(
          color: ColorPalette.secondaryBase.withOpacity(0.2),
          borderRadius: BorderRadius.circular(LayoutConstants.radiusMedium),
        ),
        padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
        child: Row(
          children: [
            SvgPicture.asset(IconsName.inprogress),
            const SizedBox(width: LayoutConstants.spacingMedium),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'In Progress',
                  style: TextStyle(
                      color: ColorPalette.secondaryBase,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4,
                      fontSize: FontsSize.medium,
                      fontFamily: Fonts.bold),
                ),
                SizedBox(height: LayoutConstants.spacingXsmall / 2),
                Text(
                  'Will arrive on 27 July 2023',
                  style: TextStyle(
                      color: ColorPalette.greyScale900,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.4,
                      fontSize: FontsSize.small,
                      fontFamily: Fonts.medium),
                ),
              ],
            )
          ],
        ));
  }

  Widget _userInfo() {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingXlarge,
          vertical: LayoutConstants.paddingSmall - 2),
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: LayoutConstants.paddingLarge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Purchase number',
                  style: TextStyle(
                      color: ColorPalette.greyScale900,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.4,
                      fontSize: FontsSize.medium,
                      fontFamily: Fonts.medium),
                ),
                Text(
                  '2509226632',
                  style: TextStyle(
                      color: ColorPalette.greyScale400,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      fontSize: FontsSize.medium,
                      fontFamily: Fonts.bold),
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: ColorPalette.greyScale200),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: LayoutConstants.paddingLarge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order date',
                  style: TextStyle(
                      color: ColorPalette.greyScale900,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.4,
                      fontSize: FontsSize.medium,
                      fontFamily: Fonts.medium),
                ),
                Text(
                  '20 July 2023, 05:00 PM',
                  style: TextStyle(
                      color: ColorPalette.greyScale400,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      fontSize: FontsSize.medium,
                      fontFamily: Fonts.bold),
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: ColorPalette.greyScale200),
        ],
      ),
    );
  }

  Widget _purchaseItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingXlarge,
          vertical: LayoutConstants.paddingMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(
                LayoutConstants.paddingZero,
                LayoutConstants.paddingZero,
                LayoutConstants.paddingZero,
                LayoutConstants.paddingSmall - 2),
            child: Text(
              'Purchased Item',
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.4,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.bold),
            ),
          ),
          Column(
            children: [
              _orderItem(),
              _orderItem(),
            ],
          )
        ],
      ),
    );
  }

  Widget _shippingInfo() {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingXlarge,
          vertical: LayoutConstants.paddingMedium),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Shipping Information',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: ColorPalette.greyScale900,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.1,
                fontSize: FontsSize.medium,
                fontFamily: Fonts.bold),
          ),
          SizedBox(height: LayoutConstants.spacingMedium),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery Address',
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
                'Home',
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
      ),
    );
  }

  Widget _paymentInfo() {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingXlarge,
          vertical: LayoutConstants.paddingMedium),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Payment Information',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: ColorPalette.greyScale900,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.1,
                fontSize: FontsSize.medium,
                fontFamily: Fonts.bold),
          ),
          SizedBox(height: LayoutConstants.spacingMedium),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: LayoutConstants.paddingSmall - 2),
            child: Row(
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: LayoutConstants.paddingSmall - 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount',
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
                  'XAF 25,000',
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: LayoutConstants.paddingSmall - 2),
            child: Row(
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: LayoutConstants.paddingSmall - 2),
            child: Row(
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
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: LayoutConstants.paddingSmall - 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment',
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
            ),
          ),
          Divider(thickness: 1, color: ColorPalette.greyScale200),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: LayoutConstants.paddingSmall - 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
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
                  'XAF 32,000',
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
          ),
        ],
      ),
    );
  }

  Widget _orderItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: LayoutConstants.paddingSmall - 2),
      child: Row(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
                color: ColorPalette.errorLight,
                borderRadius:
                    BorderRadius.circular(LayoutConstants.radiusSmall)),
            alignment: Alignment.center,
            child: Image.asset(
              ImagesName.photo,
              height: 64,
              width: 64,
            ),
          ),
          const SizedBox(width: LayoutConstants.spacingMedium),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Oversized Sweatshirt',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: ColorPalette.greyScale900,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.1,
                    fontSize: FontsSize.medium,
                    fontFamily: Fonts.bold),
              ),
              const SizedBox(height: LayoutConstants.spacingXsmall / 2),
              _tagsDetails(),
              const SizedBox(height: LayoutConstants.spacingXsmall / 2),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'XAF 50,000',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: ColorPalette.greyScale400,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.1,
                        fontSize: FontsSize.medium,
                        fontFamily: Fonts.bold),
                  ),
                  Text(
                    'x1',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: ColorPalette.greyScale400,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.2,
                        fontSize: FontsSize.small,
                        fontFamily: Fonts.medium),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }

  Widget _tagsDetails() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(LayoutConstants.paddingSmall - 4),
          decoration: BoxDecoration(
              color: ColorPalette.primary50,
              borderRadius: BorderRadius.circular(LayoutConstants.radiusLarge)),
          alignment: Alignment.center,
          child: const Text(
            'Size: L',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: ColorPalette.greyScale400,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.1,
                fontSize: FontsSize.small,
                fontFamily: Fonts.medium),
          ),
        ),
        const SizedBox(width: LayoutConstants.spacingXsmall / 2),
        Container(
          padding: const EdgeInsets.all(LayoutConstants.paddingSmall / 2),
          decoration: BoxDecoration(
              color: ColorPalette.primary50,
              borderRadius: BorderRadius.circular(LayoutConstants.radiusLarge)),
          alignment: Alignment.center,
          child: const Text(
            'Color: Red',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: ColorPalette.greyScale400,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.1,
                fontSize: FontsSize.small,
                fontFamily: Fonts.medium),
          ),
        ),
      ],
    );
  }
}
