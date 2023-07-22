import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/constants.dart';
import 'back_custom_app_bar.dart';

class BackTitleAppBar extends StatelessWidget {
  final String title;
  final VoidCallback callback;
  const BackTitleAppBar(
      {super.key, required this.title, required this.callback});

  @override
  Widget build(BuildContext context) {
    return BackCustomAppBar(
      callback: callback,
      child: Stack(children: [
        Positioned(
          left: 0,
          bottom: 6,
          child: SvgPicture.asset(IconsName.back),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                  fontSize: FontsSize.xlarge,
                  fontFamily: Fonts.bold),
            ),
          ],
        ),
      ]),
    );
  }
}
