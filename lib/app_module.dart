import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/cart/cart.module.dart';
import 'package:mokolo/modules/checkout/checkout.module.dart';
import 'package:mokolo/modules/core/layout/layout.module.dart';
import 'package:mokolo/modules/home/home.module.dart';
import 'package:mokolo/modules/notifications/notifications.module.dart';
import 'package:mokolo/modules/orders/orders.module.dart';
import 'package:mokolo/modules/search/search.module.dart';
import 'package:mokolo/modules/shipping/shipping.module.dart';
import 'package:mokolo/modules/user/auth.module.dart';
import 'package:mokolo/modules/user/onboarding.module.dart';
import 'package:mokolo/routes/nav_observer.dart';
import 'modules/core/core.module.dart';
import 'modules/splash/blocs/splash_bloc.dart';
import 'modules/splash/pages/splash_page.dart';
import 'modules/user/user.module.dart';
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
    ModuleRoute(AppRoute.auth.path, module: AuthModule()),
    ModuleRoute(AppRoute.layout.path, module: LayoutModule()),
    ModuleRoute(AppRoute.home.path, module: HomeModule()),
    ModuleRoute(AppRoute.home.path, module: SearchModule()),
    ModuleRoute(AppRoute.orders.path, module: OrdersModule()),
    ModuleRoute(AppRoute.checkout.path, module: CheckoutModule()),
    ModuleRoute(AppRoute.user.path, module: UserModule()),
    ModuleRoute(AppRoute.cart.path, module: CartModule()),
    ModuleRoute(AppRoute.shipping.path, module: ShippingModule()),
    ModuleRoute(AppRoute.notification.path, module: NotificationModule()),
    ModuleRoute(AppRoute.onboarding.path, module: OnBoardingModule()),
    WildcardRoute(child: (context, args) => const RouteNotFoundPage()),
  ];
}
