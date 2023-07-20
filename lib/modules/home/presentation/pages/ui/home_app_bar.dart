import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';

import '../../../../../routes/app_routes.enum.dart';
import '../../../../common/constants/constants.dart';
import '../../../../common/constants/layout_constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

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
                child: Material(
              color: Colors.white.withOpacity(0.0),
              child: InkWell(
                splashColor: ColorPalette.secondaryBase,
                borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
                onTap: () {
                  Modular.to.pushNamed(AppRoute.notification.path);
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: ColorPalette.white,
                    borderRadius:
                        BorderRadius.circular(LayoutConstants.radiusBig),
                  ),
                  child: const BadgeIconButton(
                      iconName: IconsName.notification, badgeCount: "2"),
                ),
              ),
            ))
          ]),
    );
    ;
  }
}