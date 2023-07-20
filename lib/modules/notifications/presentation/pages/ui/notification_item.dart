import 'package:flutter/material.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/constants/layout_constants.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   border: Border(
      //       bottom: BorderSide(width: 1, color: ColorPalette.greyScale400)),
      // ),
      child: const Padding(
        padding: EdgeInsets.all(LayoutConstants.paddingLarge),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Promotion',
                  style: TextStyle(
                    color: ColorPalette.greyScale900,
                    fontSize: FontsSize.large,
                    fontFamily: Fonts.bold,
                    letterSpacing: 0.4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '3h ago',
                  style: TextStyle(
                    color: ColorPalette.greyScale400,
                    fontSize: FontsSize.medium,
                    fontFamily: Fonts.medium,
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: LayoutConstants.spacingXsmall / 2,
            ),
            Text(
              'Hi Francene, Vouchers for free shippping are available.',
              style: TextStyle(
                color: ColorPalette.greyScale400,
                fontSize: FontsSize.medium,
                fontFamily: Fonts.medium,
                letterSpacing: 0.1,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: LayoutConstants.spacingLarge,
            ),
            Divider(
              height: 1,
              color: ColorPalette.greyScale400,
            ),
          ],
        ),
      ),
      // color: Colors.red,
    );
  }
}
