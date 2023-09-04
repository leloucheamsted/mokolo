import 'package:cloud_firestore/cloud_firestore.dart';

class StoreEntity {
  final String url;
  final String imageUrl;

  StoreEntity({
    required this.url,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'imageUrl': imageUrl,
    };
  }

  factory StoreEntity.fromMap(DocumentSnapshot<Map<String, dynamic>> map) {
    return StoreEntity(url: map['url'] ?? '', imageUrl: map['imageUrl'] ?? '');
  }

  @override
  String toString() {
    return 'StoreEntity(url: $url , imageUrl: $imageUrl)';
  }
}
