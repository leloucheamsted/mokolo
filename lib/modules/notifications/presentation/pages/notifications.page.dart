import 'package:flutter/material.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/widgets/appBar/app_bar.dart';

import '../../../common/constants/layout_constants.dart';
import 'ui/notification_item.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace:
              BackTitleAppBar(title: 'Notifications', callback: () {})),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              LayoutConstants.paddingZero,
              LayoutConstants.paddingLarge,
              LayoutConstants.paddingZero,
              LayoutConstants.paddingZero),
          child: SingleChildScrollView(
            child: Column(
              children: [
                NotificationItem(),
                NotificationItem(),
                NotificationItem(),
                NotificationItem(),
                NotificationItem(),
                NotificationItem(),
                NotificationItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
