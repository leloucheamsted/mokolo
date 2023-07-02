import 'package:flutter/material.dart';
import 'package:mokolo/modules/common/constants/constants.dart';

class OnBoardingStep1 extends StatelessWidget {
  const OnBoardingStep1({super.key});

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
                ImagesName.onboardingstep1,
                height: 380,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Browse your favorite stores',
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
        ));
  }
}
