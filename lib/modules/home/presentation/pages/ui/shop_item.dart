import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/constants/layout_constants.dart';

import '../../../../../routes/app_routes.enum.dart';

class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.0),
      child: InkWell(
        splashColor: ColorPalette.greyScale200,
        borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
        onTap: () {
          Modular.to.pushNamed(AppRoute.store.path);
        },
        child: Ink(
          decoration: BoxDecoration(
            color: ColorPalette.greyScale50,
            borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
          ),
          child: Container(
            height: 72,
            width: 72,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
            ),
            child: Image.asset(
              ImagesName.apple,
              height: 32,
              width: 32,
            ),
          ),
        ),
      ),
    );
  }
}
