import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/core/layout/bloc/layout_bloc.dart';
import 'package:mokolo/modules/core/layout/presentation/pages/layout.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class LayoutModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((i) => LayoutBloc(), export: false),
      ];
  //--
  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoute.layout.pathAsChild,
            child: (context, args) => const Layout())
      ];
}
