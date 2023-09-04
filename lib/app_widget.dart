import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/routes/nav_observer.dart';
import 'modules/core/languages/Ln10.dart';
import 'modules/core/services/dialog_service.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setNavigatorKey(DialogService.navigationKey);
    Modular.setObservers([Modular.get<NavObserver>()]);
    return MaterialApp.router(
      title: "Mokolo",
      theme: Constants.theme,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      debugShowCheckedModeBanner: false,
      supportedLocales: Ln10.all,
    );
  }
}
