import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/notifications/presentation/pages/notifications.page.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class NotificationModule extends Module {
  @override
  //--
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoute.notification.pathAsChild,
          child: (context, args) => const NotificationPage(),
        ),
      ];
}
