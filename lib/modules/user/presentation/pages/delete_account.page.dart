import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';

import '../../../common/constants/constants.dart';
import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/appBar/back_title_app_bar.dart';

class DeleteAccountPage extends StatefulWidget {
  const DeleteAccountPage({super.key});

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPageState();
}

class _DeleteAccountPageState extends State<DeleteAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace:
              BackTitleAppBar(title: 'Delete account', callback: () {})),
      backgroundColor: ColorPalette.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Why do you want to delete your account ?',
                      style: TextStyle(
                        color: ColorPalette.greyScale400,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                        fontFamily: Fonts.medium,
                        fontSize: FontsSize.medium,
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingSmall),
                    Column(
                      children: [
                        _reasonItem('Personal reasons', true),
                        _reasonItem('Difficult to use', false),
                        _reasonItem('There’s a faster alternative', false),
                        _reasonItem('There’s a cheaper alternative', false),
                        _reasonItem('I have privacy concern', false),
                        _reasonItem('Others', false),
                      ],
                    ),
                    const SizedBox(height: LayoutConstants.spacingSmall),
                    Container(
                      height: 120,
                      padding:
                          const EdgeInsets.all(LayoutConstants.paddingLarge),
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: ColorPalette.greyScale300,
                        ),
                        borderRadius: BorderRadius.circular(
                            LayoutConstants.radiusLarge - 4),
                      ),
                      child: TextFormField(
                        minLines:
                            null, // any number you need (It works as the rows for the textarea)
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        style: const TextStyle(
                            color: ColorPalette.greyScale900,
                            fontFamily: Fonts.medium,
                            fontWeight: FontWeight.w500,
                            fontSize: FontsSize.large,
                            letterSpacing: 0.1),
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Write a message',
                          hintStyle: TextStyle(
                              color: ColorPalette.greyScale300,
                              fontFamily: Fonts.medium,
                              fontWeight: FontWeight.w500,
                              fontSize: FontsSize.large,
                              letterSpacing: 0.1),
                        ),
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingSmall),
                    Container(
                      padding:
                          const EdgeInsets.all(LayoutConstants.paddingLarge),
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        color: ColorPalette.secondaryBase.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                            LayoutConstants.radiusLarge - 4),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            IconsName.alert,
                            color: ColorPalette.secondaryBase,
                          ),
                          const SizedBox(width: LayoutConstants.spacingXsmall),
                          const Expanded(
                            child: Text(
                              'Please note that you will permanently all your orders, addresses, payment methods and profile info. After this, there is no turning back.',
                              style: TextStyle(
                                color: ColorPalette.secondaryBase,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.2,
                                fontFamily: Fonts.medium,
                                fontSize: FontsSize.small,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
                decoration: const BoxDecoration(
                  color: ColorPalette.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ActionButton(
                      title: 'Delete',
                      onPressed: () {},
                      color: ColorPalette.errorBase,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _reasonItem(String title, bool isChoice) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: LayoutConstants.paddingSmall),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 18,
            width: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: ColorPalette.greyScale900,
              ),
              borderRadius:
                  BorderRadius.circular(LayoutConstants.radiusLarge - 4),
            ),
            child: Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: isChoice ? ColorPalette.greyScale900 : null,
                borderRadius:
                    BorderRadius.circular(LayoutConstants.radiusLarge - 4),
              ),
            ),
          ),
          const SizedBox(width: LayoutConstants.spacingMedium),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: ColorPalette.greyScale900,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.2,
                fontFamily: Fonts.medium,
                fontSize: FontsSize.medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
