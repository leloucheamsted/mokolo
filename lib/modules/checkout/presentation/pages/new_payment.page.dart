import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/checkout/presentation/pages/ui/payment_method_item.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../../../common/constants/layout_constants.dart';
import 'ui/dropdown_file.dart';
import 'ui/input_phone.dart';

class NewPaymentPage extends StatefulWidget {
  const NewPaymentPage({super.key});

  @override
  State<NewPaymentPage> createState() => _NewPaymentPageState();
}

class _NewPaymentPageState extends State<NewPaymentPage> {
  String? selectedValue;

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
                    _customDrop(),
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

  Widget _customDrop() {
    return CustomDropdown<int>(
      onChange: (int value, int index) => print(value),
      dropdownButtonStyle: const DropdownButtonStyle(
        width: 170,
        height: 40,
        elevation: 1,
        backgroundColor: Colors.white,
        primaryColor: Colors.black87,
      ),
      dropdownStyle: DropdownStyle(
        borderRadius: BorderRadius.circular(8),
        elevation: 6,
        padding: const EdgeInsets.all(5),
      ),
      items: [
        'Orange money',
        'MTN MOMO',
      ]
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.key + 1,
              child: Row(children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(LayoutConstants.radiusMedium),
                    image: DecorationImage(
                      image: AssetImage(
                          item.key == 0 ? ImagesName.orange : ImagesName.mtn),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: null,
                ),
                const SizedBox(width: LayoutConstants.spacingMedium),
                Text(
                  item.value,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      color: ColorPalette.greyScale900,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      fontSize: FontsSize.medium,
                      fontFamily: Fonts.bold),
                ),
              ]),
            ),
          )
          .toList(),
      child: _placehoderDrop(),
    );
  }

  Widget _placehoderDrop() {
    return Expanded(
      child: Row(children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(LayoutConstants.radiusMedium),
            image: const DecorationImage(
              image: AssetImage(ImagesName.orange),
              fit: BoxFit.cover,
            ),
          ),
          child: null,
        ),
        const SizedBox(width: LayoutConstants.spacingMedium),
        const Text(
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
      ]),
    );
  }
}
