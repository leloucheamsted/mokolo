import 'package:google_places_flutter/model/prediction.dart';

class AutocompletePrediction {
  /// [description] con
  ///
  final String? description;

  /// [structuredFormatting]
  final StructuredFormatting? structuredFormatting;

  /// [placeId]
  final String? placeId;

  /// [reference]
  final String? reference;

  AutocompletePrediction({
    this.description,
    this.structuredFormatting,
    this.placeId,
    this.reference,
  });

  factory AutocompletePrediction.fromJson(Map<String, dynamic> json) {
    return AutocompletePrediction(
      description: json['description'] as String?,
      placeId: json['place_id'] as String?,
      reference: json['reference'] as String?,
      structuredFormatting: json['structured_formatting'] != null
          ? StructuredFormatting.fromJson(json['structured_formatting'])
          : null,
    );
  }
}
