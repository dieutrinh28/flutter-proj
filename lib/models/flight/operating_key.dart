import 'package:json_annotation/json_annotation.dart';

part 'operating_key.g.dart';

@JsonSerializable()
class OperatingKey {
  @JsonKey(name: "airline_name")
  String? airlineName;

  @JsonKey(name: "iata_code")
  String? iataCode;

  OperatingKey({
    this.airlineName,
    this.iataCode,
  });

  OperatingKey copyWith({
    String? airlineName,
    String? iataCode,
  }) {
    return OperatingKey(
      airlineName: airlineName ?? this.airlineName,
      iataCode: iataCode ?? this.iataCode,
    );
  }

  factory OperatingKey.fromJson(Map<String, dynamic> json) =>
      _$OperatingKeyFromJson(json);

  Map<String, dynamic> toJson() => _$OperatingKeyToJson(this);
}
