import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'airport.g.dart';

@JsonSerializable()
class Airport extends Equatable {
  @JsonKey(name: "city_name")
  final String? cityName;

  @JsonKey(name: "country")
  final String? country;

  @JsonKey(name: "airport_name")
  final String? airportName;

  @JsonKey(name: "iata_code")
  final String? iataCode;

  @JsonKey(name: "object_type")
  final String? objectType;

  const Airport({
    this.cityName,
    this.country,
    this.airportName,
    this.iataCode,
    this.objectType,
  });

  factory Airport.fromJson(Map<String, dynamic> json) =>
      _$AirportFromJson(json);

  Map<String, dynamic> toJson() => _$AirportToJson(this);

  @override
  List<Object?> get props => [
        cityName,
        country,
        airportName,
        iataCode,
        objectType,
      ];
}
