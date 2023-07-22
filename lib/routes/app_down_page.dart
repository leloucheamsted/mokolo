import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/constants/layout_constants.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';

class AppDownPage extends StatelessWidget {
  const AppDownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final String currentRoute =Modular.to.navigateHistory.map((e) => e.name).toList().join("\n");
    final String currentRoute = Modular.to.path;
    return Scaffold(
      backgroundColor: ColorPalette.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingXlarge * 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(IconsName.serverdown),
                        const SizedBox(height: LayoutConstants.spacingBig),
                        const Text(
                          'We’re temporary down',
                          style: TextStyle(
                              color: ColorPalette.greyScale900,
                              fontWeight: FontWeight.w600,
                              fontFamily: Fonts.bold,
                              fontSize: FontsSize.head4,
                              letterSpacing: 0.4),
                        ),
                        const Text(
                          'Try again later or turn on notifications, so we could notify you when it’s done.',
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
              ActionButton(title: 'Notify me', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
