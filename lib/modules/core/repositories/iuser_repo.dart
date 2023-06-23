import 'package:dartz/dartz.dart';

import '../error/failure.dart';

abstract class IUserRepo {
  Future<Either<IFailure, void>> setDisplayName(String displaynName);
  Future<Either<IFailure, void>> setPhoto(String imgPath);
//  Future<Either<IFailure, AppUser?>> getDetails({String? userId});
}