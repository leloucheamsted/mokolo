import 'package:flutter_modular/flutter_modular.dart';

class SplashBloc {
  // late final SessionExistsUseCase useCase = Modular.get();
  // late final SessionReadTokenUseCase useCase = Modular.get();
  // late final FetchGroupListBloc fetchGroupListBloc = Modular.get();
  // late final AppStateBloc appStateBloc = Modular.get();
  // late final _useCaseStreamBind = EitherStreamBinder();

  bool _isBusy = false;
  SplashBloc();

  void checkTokenAndRedirect() async {
    if (_isBusy) return;

    _isBusy = true;

  //  await appStateBloc.bootstrap();
  }

  void dispose() {
    // _useCaseStreamBind.dispose();
  }
}