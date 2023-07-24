import 'package:flutter/cupertino.dart';
import 'package:mokolo/modules/common/constants/layout_constants.dart';

import '../../../../common/constants/constants.dart';

class PaymentMethodItem extends StatelessWidget {
  final bool isChoice;
  final String name, number, icon;
  const PaymentMethodItem(
      {super.key,
      required this.isChoice,
      required this.name,
      required this.number,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: LayoutConstants.paddingSmall - 2),
      child: Container(
        padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: ColorPalette.greyScale200,
          ),
          borderRadius: BorderRadius.circular(LayoutConstants.radiusLarge - 4),
        ),
        child: Row(children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
              image: DecorationImage(
                image: AssetImage(icon),
                fit: BoxFit.cover,
              ),
            ),
            child: null,
          ),
          const SizedBox(width: LayoutConstants.spacingMedium),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      color: ColorPalette.greyScale900,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      fontSize: FontsSize.medium,
                      fontFamily: Fonts.bold),
                ),
                const SizedBox(height: LayoutConstants.spacingXsmall),
                Text(
                  number,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      color: ColorPalette.greyScale400,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      fontSize: FontsSize.medium,
                      fontFamily: Fonts.medium),
                ),
              ],
            ),
          ),
          Container(
            height: 18,
            width: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: ColorPalette.greyScale900,
              ),
              borderRadius:
                  BorderRadius.circular(LayoutConstants.radiusLarge - 4),
            ),
            child: Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: isChoice ? ColorPalette.greyScale900 : null,
                borderRadius:
                    BorderRadius.circular(LayoutConstants.radiusLarge - 4),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
