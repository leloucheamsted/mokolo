import 'package:flutter/material.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class InputCode extends StatefulWidget {
  const InputCode({super.key});

  @override
  State<InputCode> createState() => _InputCodeState();
}

class _InputCodeState extends State<InputCode> {
  String currentText = "";
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      pastedTextStyle: const TextStyle(
        color: ColorPalette.greyScale900,
        fontWeight: FontWeight.bold,
      ),
      textStyle: const TextStyle(
        color: ColorPalette.greyScale900,
        fontWeight: FontWeight.bold,
      ),
      length: 5,
      animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      controller: textEditingController,
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.circle,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 56,
          fieldWidth: 56,
          selectedColor: ColorPalette.greyScale900,
          activeColor: ColorPalette.greyScale200,
          inactiveColor: ColorPalette.greyScale200),
      onCompleted: (v) {
        //debugPrint(v);
        debugPrint("Completed");
      },
      onChanged: (value) {
        debugPrint(value);
        setState(() {
          currentText = value;
        });
      },
    );
  }
}
