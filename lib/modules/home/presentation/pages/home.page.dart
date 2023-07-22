import 'package:flutter/material.dart';
import 'package:mokolo/modules/home/presentation/pages/ui/shop_item.dart';
import 'package:mokolo/modules/home/presentation/pages/ui/home_app_bar.dart';

import '../../../common/constants/layout_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace: const HomeAppBar()),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(LayoutConstants.paddingXlarge,
              LayoutConstants.paddingXlarge, LayoutConstants.paddingXlarge, 0),
          child: MediaQuery.removeViewPadding(
            context: context,
            removeTop: true,
            child: GridView.builder(
                itemCount: 16,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: LayoutConstants.spacingLarge,
                  crossAxisSpacing: LayoutConstants.spacingMedium,
                ),
                itemBuilder: (_, index) {
                  return const ShopItem();
                }),
          ),
        ),
      ),
    );
  }
}
