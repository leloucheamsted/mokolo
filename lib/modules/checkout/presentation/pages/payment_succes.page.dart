import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/constants/constants.dart';
import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/buttons/action_button.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      body: Scaffold(
        backgroundColor: ColorPalette.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.all(LayoutConstants.paddingXlarge * 2),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(IconsName.paymentsuccess),
                          const SizedBox(height: LayoutConstants.spacingBig),
                          const Text(
                            'Payment Success!',
                            style: TextStyle(
                                color: ColorPalette.greyScale900,
                                fontWeight: FontWeight.w600,
                                fontFamily: Fonts.bold,
                                fontSize: FontsSize.head4,
                                letterSpacing: 0.4),
                          ),
                          const Text(
                            'We are now processing your order. Please check the status of your order in the transaction list.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorPalette.greyScale400,
                                fontWeight: FontWeight.w400,
                                fontFamily: Fonts.regular,
                                fontSize: FontsSize.medium,
                                letterSpacing: 0.4),
                          ),
                          const SizedBox(height: LayoutConstants.spacingLarge),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(LayoutConstants.paddingXlarge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ActionButton(title: 'Go to home', onPressed: () {}),
                    const SizedBox(height: LayoutConstants.spacingLarge),
                    Container(
                      padding:
                          const EdgeInsets.all(LayoutConstants.paddingLarge),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: ColorPalette.greyScale300,
                        ),
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusBig),
                      ),
                      child: const Text(
                        'Transaction details',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: ColorPalette.primaryBase,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                            fontSize: FontsSize.large,
                            fontFamily: Fonts.medium),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
