import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';

import '../../../../../routes/app_routes.enum.dart';
import '../../../../common/constants/layout_constants.dart';

class ShippingAddressAppBar extends StatelessWidget {
  const ShippingAddressAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingXlarge,
          vertical: LayoutConstants.paddingLarge),
      alignment: Alignment.bottomCenter,
      height: LayoutConstants.appBarSize * 2.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(IconsName.back),
          const Text(
            'Address',
            style: TextStyle(
              color: ColorPalette.greyScale900,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.bold,
              letterSpacing: 0.4,
              fontSize: FontsSize.large,
            ),
          ),
          SizedBox(
            child: Material(
              color: Colors.white.withOpacity(0.0),
              child: InkWell(
                splashColor: ColorPalette.secondaryBase,
                borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
                onTap: () {
                  Modular.to.pushNamed(AppRoute.newaddress.path);
                },
                child: Ink(
                    decoration: BoxDecoration(
                      color: ColorPalette.white,
                      borderRadius:
                          BorderRadius.circular(LayoutConstants.radiusBig),
                    ),
                    child: SvgPicture.asset(IconsName.edit)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
