import 'package:flutter/material.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/widgets/buttons/action_button.dart';
import 'package:mokolo/modules/home/presentation/pages/ui/store_app_bar.dart';

import '../../../common/constants/layout_constants.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace: const StoreAppBar()),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              color: Colors.red,
            )),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LayoutConstants.paddingXlarge,
                  vertical: LayoutConstants.medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Add items to your card',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorPalette.greyScale900,
                        fontFamily: Fonts.bold,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.1,
                        fontSize: FontsSize.medium),
                  ),
                  const SizedBox(height: LayoutConstants.spacingXsmall),
                  ActionButton(title: 'Add to cart', onPressed: () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
