import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/home/presentation/pages/home.page.dart';
import 'package:mokolo/modules/home/presentation/pages/store.page.dart';
import 'package:mokolo/modules/user/presentation/onboarding/pages/onboarding_page.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class HomeModule extends Module {
  @override
  //--
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoute.home.pathAsChild,
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          AppRoute.store.pathAsChild,
          child: (context, args) => const StorePage(),
        ),
      ];
}
