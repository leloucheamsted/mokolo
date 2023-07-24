import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/checkout/presentation/pages/checkout.page.dart';
import 'package:mokolo/modules/checkout/presentation/pages/new_payment.page.dart';
import 'package:mokolo/modules/checkout/presentation/pages/payment_succes.page.dart';
import 'package:mokolo/modules/notifications/presentation/pages/notifications.page.dart';
import 'package:mokolo/modules/orders/presentation/pages/order_detail.page.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class CheckoutModule extends Module {
  @override
  //--
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoute.checkout.pathAsChild,
          child: (context, args) => const CheckoutPage(),
        ),
        ChildRoute(
          AppRoute.newpayment.pathAsChild,
          child: (context, args) => const NewPaymentPage(),
        ),
        ChildRoute(
          AppRoute.paymentsuccess.pathAsChild,
          child: (context, args) => const PaymentSuccessPage(),
        ),
      ];
}
