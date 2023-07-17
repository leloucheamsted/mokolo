import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/constants/constants.dart';
import '../../../../common/constants/layout_constants.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingXlarge,
          vertical: LayoutConstants.paddingSmall),
      alignment: Alignment.bottomCenter,
      height: LayoutConstants.appBarSize * 3,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              AssetName.appName,
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontFamily: Fonts.bold,
                  fontSize: FontsSize.head4),
            ),
            SizedBox(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(
                    IconsName.notification,
                    height: LayoutConstants.large,
                  ),
                  Positioned(
                    top: -4,
                    right: -1,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      height: 15,
                      width: 15,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: ColorPalette.errorBase,
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusBig),
                      ),
                      child: const Text(
                        "2",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
    );
    ;
  }
}
