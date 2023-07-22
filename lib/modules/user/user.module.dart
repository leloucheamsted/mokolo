import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/user/presentation/pages/edit_profile.page.dart';
import 'package:mokolo/modules/user/presentation/pages/language_profile.page.dart';
import 'package:mokolo/modules/user/presentation/pages/notification-setting.page.dart';
import 'package:mokolo/modules/user/presentation/pages/profile.page.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class UserModule extends Module {
  @override
  //--
  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoute.user.pathAsChild,
            child: (context, args) => const ProfilePage()),
        ChildRoute(AppRoute.userProfileEdit.pathAsChild,
            child: (context, args) => const EditProfilePage()),
        ChildRoute(AppRoute.userProfileNotification.pathAsChild,
            child: (context, args) => const NotificationSettingPage()),
        ChildRoute(AppRoute.userProfileLanguage.pathAsChild,
            child: (context, args) => const LanguageProfilePage()),
      ];
}
