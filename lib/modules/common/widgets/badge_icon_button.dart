import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';
import '../constants/layout_constants.dart';

class BadgeIconButton extends StatelessWidget {
  final String iconName, badgeCount;
  const BadgeIconButton(
      {super.key, required this.iconName, required this.badgeCount});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          iconName,
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
              borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
            ),
            child: Text(
              badgeCount,
              style: const TextStyle(color: Colors.white, fontSize: 8),
            ),
          ),
        ),
      ],
    );
  }
}
