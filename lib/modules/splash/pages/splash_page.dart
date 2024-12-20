import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/routes/app_routes.enum.dart';

import '../blocs/splash_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // late final SplashBloc bloc = SplashBloc();
  late final SplashBloc bloc = Modular.get();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _onReady());
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  void _onReady() {
    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      bloc.checkTokenAndRedirect();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          Modular.to.pushNamed(AppRoute.onboarding.path);
        },
        child: Material(
          color: Colors.white,
          child: Center(
            child: SizedBox(
              height: 300,
              // width: 50,
              // color: AppTheme().colors.mainBackground,
              child: Image.asset(
                ImagesName.shoppa,
                width: 300,
                height: 300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
