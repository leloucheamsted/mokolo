import 'package:dartz/dartz.dart';
import 'package:mokolo/modules/core/error/failure.dart';
import 'package:mokolo/modules/core/usecases/i_usecase.dart';
import 'package:mokolo/modules/home/domain/entities/store.entity.dart';
import 'package:mokolo/modules/home/domain/repositories/i_store.repo.dart';

class StoreFetchListUseCase implements IUseCase<List<StoreEntity>, void> {
  final IStoreRepo repo;

  StoreFetchListUseCase(this.repo);
  @override
  Future<Either<IFailure, List<StoreEntity>>> call(void params) {
    return repo.fetchStores();
  }
}
