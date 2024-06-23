import 'package:json_annotation/json_annotation.dart';

part 'baggage.g.dart';

@JsonSerializable()
class Baggage {
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "number")
  int? number;
  @JsonKey(name: "weight")
  double? weight;
  @JsonKey(name: "unit")
  String? unit;

  Baggage({
    this.type,
    this.number,
    this.weight,
    this.unit,
  });

  Baggage copyWith({
    String? type,
    int? number,
    double? weight,
    String? unit,
  }) =>
      Baggage(
        type: type ?? this.type,
        number: number ?? this.number,
        weight: weight ?? this.weight,
        unit: unit ?? this.unit,
      );

  factory Baggage.fromJson(Map<String, dynamic> json) =>
      _$BaggageFromJson(json);

  Map<String, dynamic> toJson() => _$BaggageToJson(this);
}
