import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mokolo/modules/user/presentation/auth/pages/ui/input_phone.dart';
import '../../../../../routes/app_routes.enum.dart';
import '../../../../common/constants/layout_constants.dart';

class PhoneInputPage extends StatefulWidget {
  const PhoneInputPage({super.key});

  @override
  State<PhoneInputPage> createState() => _PhoneInputPageState();
}

class _PhoneInputPageState extends State<PhoneInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: LayoutConstants.appBarSize + 10,
        flexibleSpace: BackCustomAppBar(
          callback: () {},
          child: SvgPicture.asset(IconsName.close),
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
                      'Welcome!',
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
                      'Let’s get started with a free shoppa account.',
                      style: TextStyle(
                        color: ColorPalette.greyScale400,
                        fontWeight: FontWeight.w400,
                        fontFamily: Fonts.regular,
                        fontSize: FontsSize.medium,
                      ),
                    ),
                    const SizedBox(
                      height: LayoutConstants.spacingLarge,
                    ),
                    const InputPhone(),
                    const SizedBox(
                      height: LayoutConstants.spacingXBig,
                    ),
                    ActionButton(
                        title: 'Continue',
                        onPressed: () =>
                            {Modular.to.pushNamed(AppRoute.otp.path)})
                  ],
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'By taping "Get Started" and using asapp app,you\'re',
                    style: TextStyle(
                      color: ColorPalette.greyScale900,
                      fontWeight: FontWeight.w500,
                      fontFamily: Fonts.regular,
                      fontSize: FontsSize.small,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'agreeing to our',
                        style: TextStyle(
                          color: ColorPalette.greyScale900,
                          fontWeight: FontWeight.w500,
                          fontFamily: Fonts.regular,
                          fontSize: FontsSize.small,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'terms of services',
                        style: TextStyle(
                          color: ColorPalette.secondaryBase,
                          fontWeight: FontWeight.w500,
                          fontFamily: Fonts.medium,
                          fontSize: FontsSize.small,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'and',
                        style: TextStyle(
                          color: ColorPalette.greyScale900,
                          fontWeight: FontWeight.w500,
                          fontFamily: Fonts.regular,
                          fontSize: FontsSize.small,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'privacy policy',
                        style: TextStyle(
                          color: ColorPalette.secondaryBase,
                          fontWeight: FontWeight.w500,
                          fontFamily: Fonts.medium,
                          fontSize: FontsSize.small,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
