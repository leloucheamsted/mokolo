import 'package:mokolo/modules/home/domain/entities/store.entity.dart';
import 'package:mokolo/modules/home/infra/datasource/i_store.datasource.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RemoteStoreDataSource implements IStoreDataSource {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  @override
  Future<List<StoreEntity>> fetchStores() async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await _db.collection("store").get();
    return snapshot.docs
        .map((docSnapshot) => StoreEntity.fromMap(docSnapshot))
        .toList();
  }
}
