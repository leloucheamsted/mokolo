import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/constants/constants.dart';
import '../../../../common/constants/layout_constants.dart';

class SearchBarUi extends StatefulWidget {
  const SearchBarUi({super.key});

  @override
  State<SearchBarUi> createState() => _SearchBarUiState();
}

class _SearchBarUiState extends State<SearchBarUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            SvgPicture.asset(IconsName.search),
            const SizedBox(width: LayoutConstants.spacingSmall),
            Expanded(child: _buildInputStoreName()),
            SvgPicture.asset(IconsName.close, color: ColorPalette.greyScale400),
          ],
        ),
      ),
    );
  }

  Widget _buildInputStoreName() {
    return TextField(
      autofocus: false,
      // controller: _phoneTxtCtrl,
      // onChanged: ((value) {
      //   context.read<AuthBloc>().setPhoneNumber = value;
      // }),
      keyboardType: TextInputType.text,
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
        hintText: 'Search stores',
        hintStyle: TextStyle(
            color: ColorPalette.greyScale300,
            fontFamily: Fonts.medium,
            fontWeight: FontWeight.w500,
            fontSize: FontsSize.large,
            letterSpacing: 0.3),
      ),
    );
  }
}
