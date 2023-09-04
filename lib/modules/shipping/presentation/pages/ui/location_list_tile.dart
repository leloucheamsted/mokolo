import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';

class LocationListTile extends StatelessWidget {
  final String location;
  final VoidCallback press;
  const LocationListTile(
      {super.key, required this.location, required this.press});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: press,
          horizontalTitleGap: 0,
          leading: SvgPicture.asset(IconsName.map_pin),
          title: Text(
            location,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: ColorPalette.greyScale900,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.medium,
              letterSpacing: 0.4,
              fontSize: FontsSize.medium,
            ),
          ),
        ),
        const Divider(
          height: 1,
          thickness: 1,
          color: ColorPalette.greyScale200,
        )
      ],
    );
  }
}
