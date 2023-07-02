import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/user/presentation/onboarding/pages/onboarding_page.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class OnBoardingModule extends Module{
  @override
  //--
  @override
  List<ModularRoute> get routes=>[
        ChildRoute(AppRoute.onboarding.pathAsChild, child: (context, args) => const OnBoardingPage())
  ];
}