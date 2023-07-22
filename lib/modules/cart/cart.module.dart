import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/cart/presentation/pages/cart.page.dart';
import 'package:mokolo/modules/cart/presentation/pages/promo.page.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class CartModule extends Module {
  @override
  //--
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoute.cart.pathAsChild,
          child: (context, args) => const CartPage(),
        ),
        ChildRoute(
          AppRoute.promo.pathAsChild,
          child: (context, args) => const PromoPage(),
        ),
      ];
}
