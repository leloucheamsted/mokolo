import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/constants/constants.dart';
import '../../../../common/constants/layout_constants.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animationTranslate;
  late bool isEdit = false;
  Offset containerPositionBegin = Offset.zero;
  Offset containerPositionEnd =
      const Offset(-75, 0); // move the container upward 200 logical pixel

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
          milliseconds: 1200), // animation should last for 1.5 second
    );
    animationController.addStatusListener((status) {});
    // translate tween
    animationTranslate = Tween<Offset>(
      begin: containerPositionBegin,
      end: containerPositionEnd,
    ).animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Widget _tagsDetails() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(LayoutConstants.paddingSmall),
          decoration: BoxDecoration(
              color: ColorPalette.primary50,
              borderRadius: BorderRadius.circular(LayoutConstants.radiusLarge)),
          alignment: Alignment.center,
          child: const Text(
            'Size: L',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: ColorPalette.greyScale400,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.1,
                fontSize: FontsSize.small,
                fontFamily: Fonts.medium),
          ),
        ),
        const SizedBox(width: LayoutConstants.spacingXsmall / 2),
        Container(
          padding: const EdgeInsets.all(LayoutConstants.paddingSmall),
          decoration: BoxDecoration(
              color: ColorPalette.primary50,
              borderRadius: BorderRadius.circular(LayoutConstants.radiusLarge)),
          alignment: Alignment.center,
          child: const Text(
            'Color: Red',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: ColorPalette.greyScale400,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.1,
                fontSize: FontsSize.small,
                fontFamily: Fonts.medium),
          ),
        ),
      ],
    );
  }

  Widget _countControl() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(IconsName.minus),
        const SizedBox(width: LayoutConstants.spacingSmall),
        const Text(
          '1',
          textAlign: TextAlign.start,
          style: TextStyle(
              color: ColorPalette.greyScale900,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.1,
              fontSize: FontsSize.medium,
              fontFamily: Fonts.bold),
        ),
        const SizedBox(width: LayoutConstants.spacingSmall),
        SvgPicture.asset(IconsName.plus),
      ],
    );
  }

  Widget _card() {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: ColorPalette.errorLight,
                borderRadius:
                    BorderRadius.circular(LayoutConstants.radiusSmall)),
            alignment: Alignment.center,
            child: Image.asset(
              ImagesName.photo,
              height: 80,
              width: 80,
            ),
          ),
          const SizedBox(width: LayoutConstants.spacingMedium),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Colorway Hoodie Vert 3',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: ColorPalette.greyScale900,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      fontSize: FontsSize.medium,
                      fontFamily: Fonts.bold),
                ),
                const SizedBox(height: LayoutConstants.spacingXsmall / 2),
                _tagsDetails(),
                const SizedBox(height: LayoutConstants.spacingXsmall / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'XAF 50,000',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: ColorPalette.greyScale900,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.1,
                          fontSize: FontsSize.medium,
                          fontFamily: Fonts.bold),
                    ),
                    _countControl()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Amazon',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: ColorPalette.greyScale900,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      fontSize: FontsSize.large,
                      fontFamily: Fonts.bold),
                ),
                InkWell(
                  onTap: () {
                    if (animationController.status ==
                        AnimationStatus.dismissed) {
                      animationController.forward();
                      setState(() {
                        isEdit = !isEdit;
                      });
                    } else {
                      animationController.reverse();
                      setState(() {
                        isEdit = !isEdit;
                      });
                    }
                  },
                  child: Text(
                    isEdit ? 'Done' : 'Edit',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: isEdit
                            ? ColorPalette.secondaryBase
                            : ColorPalette.greyScale400,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.1,
                        fontSize: FontsSize.medium,
                        fontFamily: isEdit ? Fonts.bold : Fonts.medium),
                  ),
                ),
              ],
            ),
            const SizedBox(height: LayoutConstants.spacingXsmall),
            ClipRect(
              child: SizedBox(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      bottom: 0,
                      child: SizedBox(
                        width: 55,
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(
                              LayoutConstants.paddingLarge),
                          decoration: BoxDecoration(
                            color: ColorPalette.dangerColor,
                            borderRadius: BorderRadius.circular(
                                LayoutConstants.radiusMedium + 2),
                          ),
                          child: SvgPicture.asset(IconsName.trash),
                        ),
                      ),
                    ),
                    AnimatedBuilder(
                      animation: animationController,
                      builder: (BuildContext context, Widget? child) {
                        var animatedChild = Transform.translate(
                          offset: animationTranslate.value,
                          child: _card(),
                        );
                        return animatedChild;
                      },
                      child: _card(),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ],
    );
  }
}
