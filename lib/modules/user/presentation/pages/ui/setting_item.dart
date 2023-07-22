import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/constants/constants.dart';
import '../../../../common/constants/layout_constants.dart';

class SettingItem extends StatelessWidget {
  final String title, icon;
  final VoidCallback action;
  const SettingItem({
    super.key,
    required this.title,
    required this.icon,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: LayoutConstants.paddingLarge),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(icon),
                const SizedBox(width: LayoutConstants.spacingMedium),
                Text(
                  title,
                  style: const TextStyle(
                    color: ColorPalette.greyScale900,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1,
                    fontFamily: Fonts.medium,
                    fontSize: FontsSize.medium,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(IconsName.chevronRight)
              ],
            ),
          ),
          const Divider(thickness: 1, color: ColorPalette.greyScale100),
        ],
      ),
    );
  }
}
