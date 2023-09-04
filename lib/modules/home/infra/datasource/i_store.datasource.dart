import 'package:mokolo/modules/home/domain/entities/store.entity.dart';

abstract class IStoreDataSource {
  Future<List<StoreEntity>> fetchStores();
}
