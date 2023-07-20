import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/home/presentation/pages/home.page.dart';
import 'package:mokolo/modules/home/presentation/pages/store.page.dart';
import 'package:mokolo/modules/search/presentation/pages/search.page.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class SearchModule extends Module {
  @override
  //--
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoute.search.pathAsChild,
          child: (context, args) => const SearchPage(),
        ),
      ];
}
