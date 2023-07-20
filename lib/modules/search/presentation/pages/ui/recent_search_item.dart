import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/constants/layout_constants.dart';

class RecentSearchItem extends StatelessWidget {
  const RecentSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: LayoutConstants.paddingMedium),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ignore: deprecated_member_use
          SvgPicture.asset(IconsName.clock, color: ColorPalette.greyScale400),
          const SizedBox(width: LayoutConstants.spacingSmall),
          const Text(
            'Apple',
            style: TextStyle(
                color: ColorPalette.greyScale900,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.3,
                fontSize: FontsSize.large,
                fontFamily: Fonts.medium),
          ),
          const Spacer(),
          SvgPicture.asset(IconsName.close, color: ColorPalette.greyScale400),
        ],
      ),
    );
  }
}
