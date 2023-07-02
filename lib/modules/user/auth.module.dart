import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/user/presentation/auth/pages/otp_page.dart';
import 'package:mokolo/modules/user/presentation/auth/pages/phone_input_page.dart';

import '../../routes/app_routes.enum.dart';

class AuthModule extends Module {
  @override
  //--
  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoute.auth.pathAsChild,
            child: (context, args) => const PhoneInputPage()),
        ChildRoute(AppRoute.otp.pathAsChild,
            child: (context, args) => const OtpPage())
      ];
}
