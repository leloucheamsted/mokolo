import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';

import '../../../../../routes/app_routes.enum.dart';
import '../../../../common/constants/constants.dart';
import '../../../../common/constants/layout_constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Buy from online",
                style: TextStyle(
                    color: ColorPalette.greyScale900,
                    fontFamily: Fonts.bold,
                    fontSize: FontsSize.head4),
              ),
              Row(
                children: [
                  Text(
                    "Store in",
                    style: TextStyle(
                        color: ColorPalette.greyScale900,
                        fontFamily: Fonts.bold,
                        fontSize: FontsSize.head4),
                  ),
                  Text(
                    " France",
                    style: TextStyle(
                        color: ColorPalette.secondaryBase,
                        fontFamily: Fonts.bold,
                        fontSize: FontsSize.head4),
                  ),
                ],
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Material(
                color: Colors.white.withOpacity(0.0),
                child: InkWell(
                  splashColor: ColorPalette.secondaryBase,
                  borderRadius:
                      BorderRadius.circular(LayoutConstants.radiusBig),
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
        ]);
  }
}
