import 'package:flutter/material.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/user/presentation/onboarding/pages/ui/onboarding-step1.dart';
import 'package:mokolo/modules/user/presentation/onboarding/pages/ui/onboarding-step2.dart';
import 'package:mokolo/modules/user/presentation/onboarding/pages/ui/onboarding-step3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../common/constants/layout_constants.dart';
import '../../../../common/widgets/widgets.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //     automaticallyImplyLeading: false,
      //     toolbarHeight: LayoutConstants.appBarSize,
      //     flexibleSpace: const BlankAppBar()),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingXlarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.grey.shade300,
                      height: 500,
                      child: PageView(
                        // padEnds: false,
                         physics: const NeverScrollableScrollPhysics(),
                        pageSnapping: false,
                        controller: controller,
                        children: const [
                          OnBoardingStep1(),
                          OnBoardingStep2(),
                          OnBoardingStep3()
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      onDotClicked: (index) {
                        print("jump");
                        controller.nextPage(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.easeIn);
            
                      },
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        dotColor: ColorPalette.greyScale300,
                        radius: 32,
                        activeDotColor: ColorPalette.primaryBase,
                        spacing: 6.0,
                        dotHeight: 6,
                        dotWidth: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: LayoutConstants.spacingLarge),
              ActionButton(
                onPressed: () {
                  controller.nextPage(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.easeIn);
                },
                title: 'Next',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _step1Widget() {
    return Container();
  }

  Widget _step2Widget() {
    return Container();
  }

  Widget _step3Widget() {
    return Container();
  }
}
