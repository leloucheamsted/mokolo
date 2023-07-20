import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';

import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/appBar/back_custom_app_bar.dart';
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
        flexibleSpace: BackCustomAppBar(
          callback: () {},
          child: Row(
            children: [
              SvgPicture.asset(IconsName.back),
              const Spacer(),
              const Text(
                'Notifications',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorPalette.greyScale900,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.1,
                    fontSize: FontsSize.xlarge,
                    fontFamily: Fonts.bold),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
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
