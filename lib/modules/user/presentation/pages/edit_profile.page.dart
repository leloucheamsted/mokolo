import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mokolo/modules/common/constants/constants.dart';

import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/appBar/back_title_app_bar.dart';
import '../../../common/widgets/buttons/action_button.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace:
              BackTitleAppBar(title: 'Edit profile', callback: () {})),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'First Name',
                      style: TextStyle(
                        color: ColorPalette.greyScale400,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                        fontFamily: Fonts.bold,
                        fontSize: FontsSize.large,
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingMedium),
                    Container(
                      padding:
                          const EdgeInsets.all(LayoutConstants.paddingLarge),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: ColorPalette.greyScale300,
                        ),
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusBig),
                      ),
                      child: TextField(
                        autofocus: false,
                        // controller: _phoneTxtCtrl,
                        // onChanged: ((value) {
                        //   context.read<AuthBloc>().setPhoneNumber = value;
                        // }),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],

                        /// Add Text style with decoration
                        style: const TextStyle(
                            color: ColorPalette.greyScale900,
                            fontFamily: Fonts.medium,
                            fontWeight: FontWeight.w500,
                            fontSize: FontsSize.large,
                            letterSpacing: 0.1),
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Address name',
                          hintStyle: TextStyle(
                              color: ColorPalette.greyScale300,
                              fontFamily: Fonts.medium,
                              fontWeight: FontWeight.w500,
                              fontSize: FontsSize.large,
                              letterSpacing: 0.1),
                        ),
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingMedium),
                    const Text(
                      'Last Name',
                      style: TextStyle(
                        color: ColorPalette.greyScale400,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                        fontFamily: Fonts.bold,
                        fontSize: FontsSize.large,
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingMedium),
                    Container(
                      padding:
                          const EdgeInsets.all(LayoutConstants.paddingLarge),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: ColorPalette.greyScale300,
                        ),
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusBig),
                      ),
                      child: TextField(
                        autofocus: false,
                        // controller: _phoneTxtCtrl,
                        // onChanged: ((value) {
                        //   context.read<AuthBloc>().setPhoneNumber = value;
                        // }),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],

                        /// Add Text style with decoration
                        style: const TextStyle(
                            color: ColorPalette.greyScale900,
                            fontFamily: Fonts.medium,
                            fontWeight: FontWeight.w500,
                            fontSize: FontsSize.large,
                            letterSpacing: 0.1),
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Country',
                          hintStyle: TextStyle(
                              color: ColorPalette.greyScale300,
                              fontFamily: Fonts.medium,
                              fontWeight: FontWeight.w500,
                              fontSize: FontsSize.large,
                              letterSpacing: 0.1),
                        ),
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingXLarge),
                  ],
                ),
              )),
              Padding(
                  padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
                  child: ActionButton(
                      title: 'Update',
                      onPressed: () {
                        // Modular.to.pushNamed('lelou');
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
