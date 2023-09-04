class SplashBloc {
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
