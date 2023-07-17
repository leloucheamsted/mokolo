import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/layout/presentation/pages/layout.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class LayoutModule extends Module {
  @override
  //--
  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoute.layout.pathAsChild,
            child: (context, args) => const Layout())
      ];
}
