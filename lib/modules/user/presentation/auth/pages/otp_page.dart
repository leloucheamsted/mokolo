import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/user/presentation/auth/pages/ui/input_code.dart';

import '../../../../../routes/app_routes.enum.dart';
import '../../../../common/constants/constants.dart';
import '../../../../common/constants/layout_constants.dart';
import '../../../../common/widgets/appBar/back_custom_app_bar.dart';
import '../../../../common/widgets/buttons/action_button.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: LayoutConstants.appBarSize + 10,
        flexibleSpace: BackCustomAppBar(
          callback: () {},
          child: SvgPicture.asset(IconsName.back),
        ),
      ),
      backgroundColor: ColorPalette.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingXlarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Activate Account',
                      style: TextStyle(
                        color: ColorPalette.greyScale900,
                        fontWeight: FontWeight.w600,
                        fontFamily: Fonts.bold,
                        fontSize: FontsSize.head3,
                      ),
                    ),
                    const SizedBox(
                      height: LayoutConstants.spacingXsmall,
                    ),
                    const Text(
                      'Enter the verification code send to',
                      style: TextStyle(
                        color: ColorPalette.greyScale400,
                        fontWeight: FontWeight.w500,
                        fontFamily: Fonts.regular,
                        fontSize: FontsSize.medium,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '+237 682421795',
                      style: TextStyle(
                          color: ColorPalette.greyScale900,
                          fontWeight: FontWeight.w400,
                          fontFamily: Fonts.medium,
                          fontSize: FontsSize.medium,
                          letterSpacing: 0.1),
                    ),
                    const SizedBox(
                      height: LayoutConstants.spacingLarge,
                    ),
                    const InputCode(),
                    const SizedBox(
                      height: LayoutConstants.spacingLarge,
                    ),
                    const Text(
                      'Send new code',
                      style: TextStyle(
                          color: ColorPalette.greyScale200,
                          fontWeight: FontWeight.w600,
                          fontFamily: Fonts.bold,
                          fontSize: FontsSize.large,
                          letterSpacing: 0.4),
                    ),
                    const SizedBox(
                      height: LayoutConstants.spacingXBig,
                    ),
                    ActionButton(
                        title: 'Continue',
                        onPressed: () =>
                            {Modular.to.pushNamed(AppRoute.addinfo.path)})
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
