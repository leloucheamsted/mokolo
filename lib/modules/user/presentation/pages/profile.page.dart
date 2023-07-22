import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/user/presentation/pages/ui/setting_item.dart';

import '../../../../routes/app_routes.enum.dart';
import '../../../common/constants/constants.dart';
import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/appBar/back_custom_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace: BackCustomAppBar(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      color: ColorPalette.greyScale900,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      fontSize: FontsSize.xlarge,
                      fontFamily: Fonts.bold),
                ),
              ],
            ),
            callback: () {},
          )),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Column(
            children: [
              _general(),
              const SizedBox(height: LayoutConstants.spacingMedium),
              _settings(),
              const SizedBox(height: LayoutConstants.spacingMedium),
              _others(),
              const SizedBox(height: LayoutConstants.spacingBig),
              Container(
                padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
                width: MediaQuery.of(context).size.width / 2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: ColorPalette.greyScale300,
                  ),
                  borderRadius:
                      BorderRadius.circular(LayoutConstants.radiusBig),
                ),
                child: const Text(
                  'Log Out',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: ColorPalette.primaryBase,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.2,
                      fontSize: FontsSize.large,
                      fontFamily: Fonts.medium),
                ),
              ),
              const SizedBox(height: LayoutConstants.spacingMedium),
              OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(LayoutConstants.radiusBig),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(LayoutConstants.paddingLarge),
                  child: Text(
                    'Delete account',
                    style: TextStyle(
                      color: ColorPalette.errorBase,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.3,
                      fontFamily: Fonts.medium,
                      fontSize: FontsSize.large,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: LayoutConstants.spacingLarge),
              const Text(
                'v 1.0.0',
                style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                  fontFamily: Fonts.medium,
                  fontSize: FontsSize.medium,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget _general() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'General',
          style: TextStyle(
            color: ColorPalette.greyScale400,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            fontFamily: Fonts.bold,
            fontSize: FontsSize.large,
          ),
        ),
        const SizedBox(height: LayoutConstants.spacingXsmall),
        SettingItem(
            title: 'Edit profile',
            icon: IconsName.user,
            action: () {
              Modular.to.pushNamed(AppRoute.userProfileEdit.path);
            })
      ],
    );
  }

  Widget _settings() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Settings',
          style: TextStyle(
            color: ColorPalette.greyScale400,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            fontFamily: Fonts.bold,
            fontSize: FontsSize.large,
          ),
        ),
        const SizedBox(height: LayoutConstants.spacingXsmall),
        SettingItem(
            title: 'Chat with us', icon: IconsName.message, action: () {}),
        SettingItem(
            title: 'Notifications',
            icon: IconsName.map1,
            action: () {
              Modular.to.pushNamed(AppRoute.userProfileNotification.path);
            }),
        SettingItem(
            title: 'Language',
            icon: IconsName.global,
            action: () {
              Modular.to.pushNamed(AppRoute.userProfileLanguage.path);
            }),
      ],
    );
  }

  Widget _others() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Others',
          style: TextStyle(
            color: ColorPalette.greyScale400,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            fontFamily: Fonts.bold,
            fontSize: FontsSize.large,
          ),
        ),
        const SizedBox(height: LayoutConstants.spacingXsmall),
        SettingItem(
            title: 'Join our community', icon: IconsName.users, action: () {}),
        SettingItem(
            title: 'Privacy & Policy', icon: IconsName.lock, action: () {}),
        SettingItem(title: 'Rate Us', icon: IconsName.star, action: () {}),
      ],
    );
  }
}
