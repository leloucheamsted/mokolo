import 'package:flutter/material.dart';

import '../../../../../common/constants/constants.dart';

class OnBoardingStep2 extends StatelessWidget {
  const OnBoardingStep2({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
       width:MediaQuery.of(context).size.width-48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
              //  color: Colors.grey.shade300,
              color: Colors.redAccent
              ),
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Container(
                height: 280,
                child: Center(
                    child: Text(
                  "Page 2",
                  style: TextStyle(color: Colors.indigo),
                )),
              )
      );
    //    Column(
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //      SizedBox(
    //      child: Image.asset(ImagesName.onboardingstep1,height: 400,)
    //     //  child:  SvgPicture.asset(ImagesName.onboardingstep1,height: 400,width: 1000,),
    //   ),
    //     Container(
    //       width: double.infinity,
    //       alignment: Alignment.center,
    //       child: const Text(
    //         'Browse your favorite stores',
    //         textAlign: TextAlign.center,
    //       style: TextStyle(
    //         fontFamily: Fonts.bold,
    //         color: ColorPalette.greyScale900,
    //         fontWeight: FontWeight.w600,
    //         fontSize: FontsSize.head3
    //       ),
    //       ),
    //     )
    //   ],
    // );
  }
}