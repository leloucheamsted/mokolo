import 'package:mokolo/modules/core/error/failure.dart';
import 'package:mokolo/modules/core/repositories/base_repo.dart';
import 'package:mokolo/modules/home/domain/entities/store.entity.dart';
import 'package:mokolo/modules/home/domain/repositories/i_store.repo.dart';
import 'package:mokolo/modules/home/infra/datasource/i_store.datasource.dart';

class StoreRepository extends BaseRepo implements IStoreRepo {
  final IStoreDataSource _dataSource;

  StoreRepository(this._dataSource);

  @override
  Future<Either<IFailure, List<StoreEntity>>> fetchStores() {
    return runWithEither(() => _dataSource.fetchStores());
  }
}
