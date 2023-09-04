import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/home/domain/usecases/store_fetchlist.usecase.dart';
import 'package:mokolo/modules/home/presentation/bloc/fetch_store_list.bloc.dart';
import 'package:mokolo/modules/home/presentation/pages/home.page.dart';
import 'package:mokolo/modules/home/presentation/pages/store.page.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

class HomeModule extends Module {
  @override
  //--

  @override
  List<Bind<Object>> get binds => [
        //--
        Bind.lazySingleton((i) => FetchStoreListBloc(), export: false),

        // --
        Bind.lazySingleton((i) => StoreFetchListUseCase(i()), export: false),
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoute.home.pathAsChild,
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          AppRoute.store.pathAsChild,
          child: (context, args) => const StorePage(),
        ),
      ];
}
