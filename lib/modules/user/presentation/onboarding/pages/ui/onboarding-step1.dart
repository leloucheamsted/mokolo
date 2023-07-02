import 'package:flutter/material.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
class OnBoardingStep1 extends StatelessWidget {
  const OnBoardingStep1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
    //width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
               // color: Colors.grey.shade300,
                     color:Colors.red,
              ),
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           SizedBox(
           child: Image.asset(ImagesName.onboardingstep1,height: 400,)
          //  child:  SvgPicture.asset(ImagesName.onboardingstep1,height: 400,width: 1000,),
        ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Browse your favorite stores',
              textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: Fonts.bold,
              color: ColorPalette.greyScale900,
              fontWeight: FontWeight.w600,
              fontSize: FontsSize.head3
            ),
            ),
          )
        ],
      ));
  }
}
