import 'package:flutter/material.dart';

import '../../../../common/constants/constants.dart';
import '../../../../common/constants/layout_constants.dart';

class ChoiceItem extends StatelessWidget {
  const ChoiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.symmetric(vertical: LayoutConstants.paddingMedium),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorPalette.greyScale100,
                borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
              ),
              child: Container(
                height: 48,
                width: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(LayoutConstants.radiusBig),
                ),
                child: Image.asset(
                  ImagesName.apple,
                  height: 32,
                  width: 32,
                ),
              ),
            ),
            const SizedBox(width: LayoutConstants.spacingSmall),
            const Text(
              'Apple',
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.4,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.bold),
            ),
          ],
        ));
  }
}
