import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';

import '../../../../common/constants/layout_constants.dart';

class StoreAppBar extends StatelessWidget {
  const StoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingXlarge,
          vertical: LayoutConstants.paddingLarge),
      alignment: Alignment.bottomCenter,
      height: LayoutConstants.appBarSize * 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(IconsName.back),
          const Text(
            'Amazon',
            style: TextStyle(
              color: ColorPalette.greyScale900,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.bold,
              letterSpacing: 0.4,
              fontSize: FontsSize.large,
            ),
          ),
          const BadgeIconButton(
            iconName: IconsName.bag,
            badgeCount: "2",
          )
        ],
      ),
    );
  }
}
