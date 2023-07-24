import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/checkout/presentation/pages/ui/payment_method_item.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../../../common/constants/layout_constants.dart';
import 'ui/input_phone.dart';

class NewPaymentPage extends StatefulWidget {
  const NewPaymentPage({super.key});

  @override
  State<NewPaymentPage> createState() => _NewPaymentPageState();
}

class _NewPaymentPageState extends State<NewPaymentPage> {
  String? selectedValue;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace:
              BackTitleAppBar(title: 'Add new payment', callback: () {})),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: LayoutConstants.actionBtnHeight,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: ColorPalette.greyScale200,
                        ),
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusBig),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(LayoutConstants.paddingMedium),
                        child: Row(children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  LayoutConstants.radiusMedium),
                              image: const DecorationImage(
                                image: AssetImage(ImagesName.orange),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: null,
                          ),
                          const SizedBox(width: LayoutConstants.spacingMedium),
                          const Expanded(
                            child: Text(
                              'Orange Money',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: ColorPalette.greyScale900,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.1,
                                  fontSize: FontsSize.medium,
                                  fontFamily: Fonts.bold),
                            ),
                          ),
                          SvgPicture.asset(IconsName.chevronRight)
                        ]),
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingMedium),
                    const InputPhone(),
                  ],
                ),
              ),
              ActionButton(title: 'Add Orange Money', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
