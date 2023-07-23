import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/constants/layout_constants.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final double? width;
  final Color? color;
  final VoidCallback onPressed;
  ActionButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.width,
      this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: LayoutConstants.actionBtnHeight,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
              color ?? ColorPalette.primaryBase),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: Fonts.medium,
            fontSize: FontsSize.medium,
          ),
        ),
      ),
    );
  }
}
