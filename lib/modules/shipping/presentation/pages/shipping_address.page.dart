import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/shipping/presentation/pages/ui/shipping_address_app_bar.dart';

import '../../../common/constants/layout_constants.dart';

class ShippingAddressPage extends StatefulWidget {
  const ShippingAddressPage({super.key});

  @override
  State<ShippingAddressPage> createState() => _ShippingAddressPageState();
}

class _ShippingAddressPageState extends State<ShippingAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace: const ShippingAddressAppBar()),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _addressItem(
                          "Home",
                          "3891 Ranchview Dr. Richardson, California, United States",
                          'Douala',
                          true),
                      _addressItem(
                          "Office",
                          'Gilman Avenue, San Francisco, California, United States',
                          'Douala',
                          false),
                      _addressItem(
                          "Office",
                          "3891 Ranchview Dr. Richardson, California, United States",
                          'Douala',
                          false),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
                child: Container(
                  padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: ColorPalette.greyScale300,
                    ),
                    borderRadius:
                        BorderRadius.circular(LayoutConstants.radiusBig),
                  ),
                  child: const Text(
                    'New Address',
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _addressItem(String title, address, city, bool isChoice) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: LayoutConstants.paddingMedium),
      child: Container(
        padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: isChoice
                ? ColorPalette.secondaryBase
                : ColorPalette.greyScale300,
          ),
          borderRadius: BorderRadius.circular(LayoutConstants.radiusLarge - 4),
        ),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(IconsName.addressHome),
                const SizedBox(width: LayoutConstants.spacingXsmall),
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      color: ColorPalette.primaryBase,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4,
                      fontSize: FontsSize.large,
                      fontFamily: Fonts.bold),
                ),
                const Spacer(),
                SizedBox(
                    child: isChoice ? SvgPicture.asset(IconsName.check) : null)
              ],
            ),
            const SizedBox(height: LayoutConstants.spacingMedium),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        address,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        maxLines: 3,
                        style: const TextStyle(
                            color: ColorPalette.primaryBase,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                            fontSize: FontsSize.small,
                            fontFamily: Fonts.medium),
                      ),
                      const SizedBox(height: LayoutConstants.spacingXsmall),
                      Text(
                        city,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            color: ColorPalette.primaryBase,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.4,
                            fontSize: FontsSize.small,
                            fontFamily: Fonts.medium),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: isChoice
                      ? SvgPicture.asset(
                          IconsName.map,
                          height: 60,
                          width: 60,
                        )
                      : SvgPicture.asset(
                          IconsName.disablemap,
                          height: 64,
                          width: 64,
                        ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
