import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          child: Padding(
            padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(IconsName.mobile),
                const SizedBox(width: LayoutConstants.spacingXsmall),
                Expanded(child: _buildPhoneInputFiled())
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPhoneInputFiled() {
    return TextField(
      autofocus: false,
      // controller: _phoneTxtCtrl,
      // onChanged: ((value) {
      //   context.read<AuthBloc>().setPhoneNumber = value;
      // }),
      keyboardType: TextInputType.number,
      textAlign: TextAlign.left,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],

      /// Add Text style with decoration
      style: const TextStyle(
          color: ColorPalette.greyScale900,
          fontFamily: Fonts.medium,
          fontWeight: FontWeight.w500,
          fontSize: FontsSize.medium,
          letterSpacing: 0.1),
      decoration: const InputDecoration.collapsed(
        hintText: 'phone number',
        hintStyle: TextStyle(
            color: ColorPalette.greyScale300,
            fontFamily: Fonts.medium,
            fontWeight: FontWeight.w500,
            fontSize: FontsSize.medium,
            letterSpacing: 0.1),
      ),
    );
  }
}
