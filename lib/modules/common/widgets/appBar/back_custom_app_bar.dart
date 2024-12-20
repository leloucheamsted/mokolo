import 'package:flutter/material.dart';
import 'dart:io';
import '../../constants/constants.dart';
import '../../constants/layout_constants.dart';

class BackCustomAppBar extends StatelessWidget {
  final Widget child;
  final VoidCallback callback;
  const BackCustomAppBar(
      {super.key, required this.callback, required this.child});

  @override
  Widget build(BuildContext context) {
    debugPrint(Platform.operatingSystem);

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingXlarge,
          vertical: LayoutConstants.paddingLarge),
      height: LayoutConstants.appBarSize * 2.2,
      color: ColorPalette.white,
      alignment: Alignment.bottomLeft,
      child: child,
    );
  }
}
