import 'package:flutter_modular/flutter_modular.dart';

import 'error/failure.dart';

// ignore: unused_element
ServerFailure _serverFailurerMapper(dynamic response) {
  try {
    if (response.data == "") {
      return ServerFailure(
        code: response.statusCode.toString(),
        message: response.statusMessage,
      );
    }
    final Map<String, dynamic> map = response.data;
    List<String> errorArr = [map["detail"]];
    final Map<String, dynamic>? mapErrors = map["errors"];
    if (mapErrors != null) {
      final List<String> errorKeys = mapErrors.keys.toList();
      for (String key in errorKeys) {
        errorArr.add(mapErrors[key].join("\n"));
      }
    }

    return ServerFailure(
      code: map["status"]?.toString() ?? "-1",
      message: errorArr.join("\n"),
    );
  } catch (e) {
    throw Exception("_serverFailurerMapper.exception ${response.data}");
  }

// 944337
}

class CoreModule extends Module {
  @override
  List<Bind> get binds => [];
}
