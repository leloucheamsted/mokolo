// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../../../../common/constants/constants.dart';

class OnBoardingStep2 extends StatelessWidget {
  const OnBoardingStep2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            child: Image.asset(
              ImagesName.onboardingstep2,
              height: 380,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Buy the items you want',
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                  fontFamily: Fonts.bold,
                  color: ColorPalette.greyScale900,
                  fontWeight: FontWeight.w600,
                  fontSize: FontsSize.head3),
            ),
          )
        ],
      ),
    );
  }
}
