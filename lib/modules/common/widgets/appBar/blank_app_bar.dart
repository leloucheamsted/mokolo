import 'package:flutter/material.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/constants/layout_constants.dart';

class BlankAppBar extends StatelessWidget {
  const BlankAppBar({super.key});

  @override
  Widget build(BuildContext context) {
       return Container(
      height: LayoutConstants.appBarSize ,
      color: ColorPalette.white,
    );
  }
}