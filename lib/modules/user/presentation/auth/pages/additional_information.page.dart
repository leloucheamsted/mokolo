import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/widgets/buttons/action_button.dart';

import '../../../../../routes/app_routes.enum.dart';
import '../../../../common/constants/layout_constants.dart';

class AdditionalInformationPage extends StatefulWidget {
  const AdditionalInformationPage({super.key});

  @override
  State<AdditionalInformationPage> createState() =>
      _AdditionalInformationPageState();
}

class _AdditionalInformationPageState extends State<AdditionalInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(
            LayoutConstants.paddingLarge,
            LayoutConstants.paddingXlarge * 2,
            LayoutConstants.paddingLarge,
            LayoutConstants.paddingLarge),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'More about you',
                style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontWeight: FontWeight.w600,
                  fontFamily: Fonts.bold,
                  fontSize: FontsSize.head3,
                ),
              ),
              const SizedBox(
                height: LayoutConstants.spacingSmall,
              ),
              const Text(
                'Enter your personal information to complete your account creation',
                style: TextStyle(
                  color: ColorPalette.greyScale400,
                  fontWeight: FontWeight.w500,
                  fontFamily: Fonts.regular,
                  fontSize: FontsSize.large,
                ),
              ),
              const SizedBox(
                height: LayoutConstants.spacingXBig,
              ),
              Container(
                padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: ColorPalette.greyScale300,
                  ),
                  borderRadius:
                      BorderRadius.circular(LayoutConstants.radiusBig),
                ),
                child: TextField(
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
                      fontSize: FontsSize.large,
                      letterSpacing: 0.1),
                  decoration: const InputDecoration.collapsed(
                    hintText: 'First Name',
                    hintStyle: TextStyle(
                        color: ColorPalette.greyScale300,
                        fontFamily: Fonts.medium,
                        fontWeight: FontWeight.w500,
                        fontSize: FontsSize.large,
                        letterSpacing: 0.1),
                  ),
                ),
              ),
              const SizedBox(
                height: LayoutConstants.spacingLarge,
              ),
              Container(
                padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: ColorPalette.greyScale300,
                  ),
                  borderRadius:
                      BorderRadius.circular(LayoutConstants.radiusBig),
                ),
                child: TextField(
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
                      fontSize: FontsSize.large,
                      letterSpacing: 0.1),
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Last Name',
                    hintStyle: TextStyle(
                        color: ColorPalette.greyScale300,
                        fontFamily: Fonts.medium,
                        fontWeight: FontWeight.w500,
                        fontSize: FontsSize.large,
                        letterSpacing: 0.1),
                  ),
                ),
              ),
              const SizedBox(
                height: LayoutConstants.spacingLarge,
              ),
              Row(
                children: [
                  Container(
                    height: 18,
                    width: 18,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: 1 == 2
                            ? ColorPalette.greyScale900
                            : ColorPalette.greyScale200,
                      ),
                      borderRadius: BorderRadius.circular(
                          LayoutConstants.radiusLarge - 4),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: 1 == 2 ? ColorPalette.greyScale900 : null,
                        borderRadius: BorderRadius.circular(
                            LayoutConstants.radiusLarge - 4),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: LayoutConstants.spacingSmall,
                  ),
                  const Text(
                    'I am a business owner',
                    style: TextStyle(
                      color: ColorPalette.greyScale900,
                      fontWeight: FontWeight.w600,
                      fontFamily: Fonts.medium,
                      fontSize: FontsSize.large,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: LayoutConstants.spacingXBig,
              ),
              ActionButton(
                  title: 'Continue',
                  onPressed: () {
                    Modular.to.pushNamed(AppRoute.layout.path);
                  })
            ],
          ),
        ),
      )),
    );
  }
}
