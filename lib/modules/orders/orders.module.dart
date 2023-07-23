import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/notifications/presentation/pages/notifications.page.dart';
import 'package:mokolo/modules/orders/presentation/pages/order_detail.page.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class OrdersModule extends Module {
  @override
  //--
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoute.orders.pathAsChild,
          child: (context, args) => const NotificationPage(),
        ),
        ChildRoute(
          AppRoute.orderdetail.pathAsChild,
          child: (context, args) => const OrderDetailPage(),
        ),
      ];
}
