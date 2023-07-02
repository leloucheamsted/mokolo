import 'package:flutter/material.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/user/presentation/onboarding/pages/ui/onboarding-step1.dart';
import 'package:mokolo/modules/user/presentation/onboarding/pages/ui/onboarding-step2.dart';
import 'package:mokolo/modules/user/presentation/onboarding/pages/ui/onboarding-step3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../common/constants/layout_constants.dart';
import '../../../../common/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final CarouselController _controller = CarouselController();
  int _current = 0;

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
                  children: [
                    CarouselSlider(
                      items: const <Widget>[
                        OnBoardingStep1(),
                        OnBoardingStep2(),
                        OnBoardingStep3(),
                        OnBoardingStep3()
                      ],
                      carouselController: _controller,
                      options: CarouselOptions(
                        scrollPhysics: const PageScrollPhysics(),
                        //  scrollPhysics: const BouncingScrollPhysics(),
                        viewportFraction: 1,
                        aspectRatio: 16 / 9,
                        disableCenter: true,
                        pageSnapping: true,
                        clipBehavior: Clip.hardEdge,
                        enableInfiniteScroll: false,
                        height: 500,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                            if (index == 3) {
                              print("3 found");
                            }
                          });
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingSmall),
                    AnimatedSmoothIndicator(
                      activeIndex: _current,
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
                      duration: const Duration(milliseconds: 1000),
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
}
