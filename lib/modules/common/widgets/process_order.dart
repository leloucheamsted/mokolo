import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../../routes/app_routes.enum.dart';
import '../constants/constants.dart';
import '../constants/layout_constants.dart';
import 'buttons/action_button.dart';

class ProcessOrder extends StatefulWidget {
  final bool withPromoCode;
  const ProcessOrder({super.key, required this.withPromoCode});

  @override
  State<ProcessOrder> createState() => _ProcessOrderState();
}

class _ProcessOrderState extends State<ProcessOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
      decoration: BoxDecoration(
        color: ColorPalette.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 10.0,
              offset: const Offset(0.0, -10))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _promoCode(),
          const SizedBox(height: LayoutConstants.spacingLarge),
          _proceedControl()
        ],
      ),
    );
  }

  Widget _promoCode() {
    return InkWell(
      onTap: () {
        Modular.to.pushNamed(AppRoute.promo.path);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: ColorPalette.greyScale300,
          ),
          borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: LayoutConstants.paddingLarge,
              vertical: LayoutConstants.paddingMedium),
          child: Row(
            children: [
              SvgPicture.asset(IconsName.promo),
              const SizedBox(width: LayoutConstants.spacingXsmall),
              const Text(
                'Promo code',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorPalette.greyScale400,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.1,
                    fontSize: FontsSize.medium,
                    fontFamily: Fonts.bold),
              ),
              const Spacer(),
              !widget.withPromoCode
                  ? Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: ColorPalette.successBase,
                            ),
                            borderRadius: BorderRadius.circular(
                                LayoutConstants.radiusBig),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: LayoutConstants.paddingSmall,
                                vertical: LayoutConstants.paddingSmall / 2),
                            child: Text(
                              '- XAF 25,000',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorPalette.successBase,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2,
                                  fontSize: FontsSize.small,
                                  fontFamily: Fonts.medium),
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: LayoutConstants.spacingXsmall / 2),
                        SvgPicture.asset(IconsName.close,
                            // ignore: deprecated_member_use
                            color: ColorPalette.greyScale400),
                      ],
                    )
                  : SvgPicture.asset(IconsName.chevronRight),
            ],
          ),
        ),
      ),
    );
  }

  Widget _proceedControl() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Total',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorPalette.greyScale400,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                  fontSize: FontsSize.medium,
                  fontFamily: Fonts.medium),
            ),
            Text(
              '_',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.bold),
            ),
          ],
        ),
        ActionButton(
            title: 'Proceed',
            onPressed: () {
              Modular.to.pushNamed(AppRoute.shipping.path);
            },
            width: MediaQuery.of(context).size.width / 2)
      ],
    );
  }
}
