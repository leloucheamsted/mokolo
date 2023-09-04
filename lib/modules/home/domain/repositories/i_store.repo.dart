import 'package:mokolo/modules/core/error/failure.dart';
import 'package:mokolo/modules/core/repositories/base_repo.dart';
import 'package:mokolo/modules/home/domain/entities/store.entity.dart';

abstract class IStoreRepo {
  Future<Either<IFailure, List<StoreEntity>>> fetchStores();
}
