import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';

import '../../../../../routes/app_routes.enum.dart';
import '../../../../common/constants/constants.dart';
import '../../../../common/constants/layout_constants.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingLarge,
          vertical: LayoutConstants.paddingSmall - 2),
      child: Container(
        padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: ColorPalette.greyScale300,
          ),
          borderRadius: BorderRadius.circular(LayoutConstants.radiusLarge - 4),
        ),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(IconsName.shop),
                    const SizedBox(width: LayoutConstants.spacingXsmall),
                    const Text(
                      'Amazon',
                      style: TextStyle(
                          color: ColorPalette.greyScale900,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.1,
                          fontSize: FontsSize.medium,
                          fontFamily: Fonts.bold),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: ColorPalette.secondaryBase.withOpacity(0.2),
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusMedium),
                      ),
                      padding: const EdgeInsets.all(
                          LayoutConstants.paddingSmall - 2),
                      child: const Text(
                        'In Progress',
                        style: TextStyle(
                            color: ColorPalette
                                .secondaryBase, //ColorPalette.greyScale900,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2,
                            fontSize: FontsSize.small,
                            fontFamily: Fonts.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: LayoutConstants.spacingMedium),
                const Divider(thickness: 1, color: ColorPalette.greyScale200)
              ],
            ),
            const SizedBox(height: LayoutConstants.spacingMedium),
            Row(
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
                          '1 item',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: ColorPalette.greyScale400,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.2,
                              fontSize: FontsSize.small,
                              fontFamily: Fonts.medium),
                        ),
                        // _countControl()
                      ],
                    )
                  ],
                ))
              ],
            ),
            const SizedBox(height: LayoutConstants.spacingMedium),
            Column(
              children: [
                Divider(thickness: 1, color: ColorPalette.greyScale200),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: LayoutConstants.spacingSmall),
                  child: Row(children: [
                    const Text(
                      '2 more items',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: ColorPalette.greyScale900,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.1,
                          fontSize: FontsSize.small,
                          fontFamily: Fonts.medium),
                    ),
                    const Spacer(),
                    SvgPicture.asset(IconsName.chevronRight,
                        // ignore: deprecated_member_use
                        color: ColorPalette.greyScale900)
                  ]),
                ),
                const Divider(thickness: 1, color: ColorPalette.greyScale200),
              ],
            ),
            const SizedBox(height: LayoutConstants.spacingMedium),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order total',
                      style: TextStyle(
                          color: ColorPalette.greyScale400,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1,
                          fontSize: FontsSize.small,
                          fontFamily: Fonts.medium),
                    ),
                    const SizedBox(height: LayoutConstants.spacingSmall),
                    Text(
                      'XAF 100,000',
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
                ActionButton(
                  title: 'Track Order',
                  onPressed: () {
                    Modular.to.pushNamed(AppRoute.orderdetail.path);
                  },
                )
              ],
            )
          ],
        ),
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
