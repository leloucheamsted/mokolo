import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../common/constants/constants.dart';
import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/appBar/back_title_app_bar.dart';

class NotificationSettingPage extends StatefulWidget {
  const NotificationSettingPage({super.key});

  @override
  State<NotificationSettingPage> createState() =>
      _NotificationSettingPageState();
}

class _NotificationSettingPageState extends State<NotificationSettingPage> {
  bool status1 = false;

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
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Column(
            children: [
              _activityItem('App Updates'),
              _activityItem('Order Status'),
              _activityItem('Promotions'),
            ],
          ),
        ),
      )),
    );
  }

  Widget _activityItem(String title) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: LayoutConstants.paddingLarge),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: ColorPalette.greyScale900,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                  fontFamily: Fonts.bold,
                  fontSize: FontsSize.medium,
                ),
              ),
              const Spacer(),
              FlutterSwitch(
                activeColor: ColorPalette.secondaryBase,
                inactiveColor: ColorPalette.greyScale200,
                width: 60,
                height: 30,
                value: status1,
                onToggle: (val) {
                  setState(() {
                    status1 = val;
                  });
                },
              ),
            ],
          ),
        ),
        const Divider(thickness: 1, color: ColorPalette.greyScale100),
      ],
    );
  }
}
