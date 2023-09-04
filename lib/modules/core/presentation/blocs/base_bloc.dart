import 'package:flutter_modular/flutter_modular.dart';

import '../../services/dialog_service.dart';

abstract class BaseBloc implements Disposable {
  void setBusy(bool st) {
    if (st) {
      DialogService.showLoading();
    } else {
      DialogService.closeLoading();
      //Modular.to.pop();
    }
  }

  void showAlert(String msg, {String? title}) {
    DialogService.simpleAlert(title: title ?? "Alert", body: msg);
  }

  @override
  void dispose() {}
}
