import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/shipping/presentation/pages/new_address.page.dart';
import 'package:mokolo/modules/shipping/presentation/pages/shipping.page.dart';
import 'package:mokolo/modules/shipping/presentation/pages/shipping_address.page.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class ShippingModule extends Module {
  @override
  //--
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoute.search.pathAsChild,
          child: (context, args) => const ShippingPage(),
        ),
        ChildRoute(
          AppRoute.address.pathAsChild,
          child: (context, args) => const ShippingAddressPage(),
        ),
        ChildRoute(
          AppRoute.newaddress.pathAsChild,
          child: (context, args) => const NewAddressPage(),
        ),
      ];
}
