import 'package:flutter_proj/models/flight/trip.dart';
import 'package:json_annotation/json_annotation.dart';

part 'flight.g.dart';

@JsonSerializable()
class Flight {
  @JsonKey(name: "one_way_trip")
  List<Trip>? oneWayTrip;
  @JsonKey(name: "return_trip")
  List<Trip>? returnTrip;

  Flight({
    this.oneWayTrip,
    this.returnTrip,
  });

  Flight copyWith({
    List<Trip>? oneWayTrip,
    List<Trip>? returnTrip,
  }) =>
      Flight(
        oneWayTrip: oneWayTrip ?? this.oneWayTrip,
        returnTrip: returnTrip ?? this.returnTrip,
      );

  factory Flight.fromJson(Map<String, dynamic> json) => _$FlightFromJson(json);

  Map<String, dynamic> toJson() => _$FlightToJson(this);
}
