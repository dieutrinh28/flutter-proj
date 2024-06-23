import 'package:json_annotation/json_annotation.dart';

part 'destination.g.dart';

@JsonSerializable()
class Destination {
  @JsonKey(name: "airport_code")
  String? airportCode;
  @JsonKey(name: "airport_name")
  String? airportName;
  @JsonKey(name: "city_name")
  String? cityName;

  Destination({
    this.airportCode,
    this.airportName,
    this.cityName,
  });

  Destination copyWith({
    String? airportCode,
    String? airportName,
    String? cityName,
  }) =>
      Destination(
        airportCode: airportCode ?? this.airportCode,
        airportName: airportName ?? this.airportName,
        cityName: cityName ?? this.cityName,
      );

  factory Destination.fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);

  Map<String, dynamic> toJson() => _$DestinationToJson(this);
}
