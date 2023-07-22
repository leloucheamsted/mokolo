import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';

import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/appBar/back_title_app_bar.dart';

class LanguageProfilePage extends StatelessWidget {
  const LanguageProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace: BackTitleAppBar(title: 'Language', callback: () {})),
      backgroundColor: ColorPalette.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: LayoutConstants.paddingLarge),
        child: Column(
          children: [
            _languageItem(true, 'English', IconsName.gb),
            _languageItem(true, 'French', IconsName.fr),
          ],
        ),
      )),
    );
  }

  Widget _languageItem(bool isChoice, String title, icon) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: LayoutConstants.paddingMedium),
      child: Container(
        padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: isChoice
                ? ColorPalette.secondaryBase
                : ColorPalette.greyScale300,
          ),
          borderRadius: BorderRadius.circular(LayoutConstants.radiusLarge - 4),
        ),
        child: Row(children: [
          SvgPicture.asset(icon),
          const SizedBox(width: LayoutConstants.spacingXLarge),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: ColorPalette.greyScale900,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
                fontFamily: Fonts.bold,
                fontSize: FontsSize.medium,
              ),
            ),
          ),
          Checkbox(
            shape: const CircleBorder(),
            value: true,
            activeColor: ColorPalette.secondaryBase,
            overlayColor:
                MaterialStateProperty.all<Color?>(ColorPalette.greyScale200),
            fillColor:
                MaterialStateProperty.all<Color?>(ColorPalette.greyScale200),
            onChanged: (bool) {
              //   setState(() {
              //     this.value = value;
              //   });
            },
          ),
        ]),
      ),
    );
  }
}
