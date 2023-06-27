import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/user/presentation/onboarding/pages/onboarding.module.dart';
import 'package:mokolo/routes/nav_observer.dart';
import 'modules/core/core.module.dart';
import 'modules/splash/blocs/splash_bloc.dart';
import 'modules/splash/pages/splash_page.dart';
import 'routes/app_routes.enum.dart';
import 'routes/route_not_found_page.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  List<Bind> binds = [
    Bind.factory((i) => SplashBloc()),
    Bind.factory((i) => NavObserver())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(AppRoute.initial.path, child: (_, __) => const SplashPage()),
           ModuleRoute(AppRoute.onboarding.path, module: OnBoardingModule()),
    WildcardRoute(child: (context, args) => const RouteNotFoundPage()),
  ];
}