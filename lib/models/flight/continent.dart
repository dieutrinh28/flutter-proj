import 'package:equatable/equatable.dart';
import 'package:flutter_proj/models/flight/airport.dart';
import 'package:json_annotation/json_annotation.dart';

part 'continent.g.dart';

@JsonSerializable()
class Continent extends Equatable {
  @JsonKey(name: "continent_name")
  String? continentName;
  @JsonKey(name: "destination_list")
  List<Airport>? destinationList;

  Continent({
    this.continentName,
    this.destinationList,
  });

  factory Continent.fromJson(Map<String, dynamic> json) =>
      _$ContinentFromJson(json);

  Map<String, dynamic> toJson() => _$ContinentToJson(this);

  @override
  List<Object?> get props => [
        continentName,
        destinationList,
      ];
}
