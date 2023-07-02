import 'package:flutter/material.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/constants/layout_constants.dart';

class InputPhone extends StatelessWidget {
  const InputPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: LayoutConstants.actionBtnHeight,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ColorPalette.greyScale200,
            ),
            borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
          ),
        )
      ],
    );
  }
}
