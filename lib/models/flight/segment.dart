import 'package:flutter_proj/models/flight/destination.dart';
import 'package:flutter_proj/models/flight/operating.dart';
import 'package:json_annotation/json_annotation.dart';

part 'segment.g.dart';

@JsonSerializable()
class Segment {
  @JsonKey(name: "origin")
  Destination? origin;
  @JsonKey(name: "destination")
  Destination? destination;
  @JsonKey(name: "departure_at")
  DateTime? departureAt;
  @JsonKey(name: "arrived_at")
  DateTime? arrivedAt;
  @JsonKey(name: "operating")
  Operating? operating;
  @JsonKey(name: "aircraft")
  String? aircraft;
  @JsonKey(name: "duration")
  String? duration;
  @JsonKey(name: "is_different_terminal")
  bool? isDifferentTerminal;
  @JsonKey(name: "is_visa_required")
  bool? isVisaRequired;

  Segment({
    this.origin,
    this.destination,
    this.departureAt,
    this.arrivedAt,
    this.operating,
    this.aircraft,
    this.duration,
    this.isDifferentTerminal,
    this.isVisaRequired,
  });

  Segment copyWith({
    Destination? origin,
    Destination? destination,
    DateTime? departureAt,
    DateTime? arrivedAt,
    Operating? operating,
    String? aircraft,
    String? duration,
    bool? isDifferentTerminal,
    bool? isVisaRequired,
  }) =>
      Segment(
        origin: origin ?? this.origin,
        destination: destination ?? this.destination,
        departureAt: departureAt ?? this.departureAt,
        arrivedAt: arrivedAt ?? this.arrivedAt,
        operating: operating ?? this.operating,
        aircraft: aircraft ?? this.aircraft,
        duration: duration ?? this.duration,
        isDifferentTerminal: isDifferentTerminal ?? this.isDifferentTerminal,
        isVisaRequired: isVisaRequired ?? this.isVisaRequired,
      );

  factory Segment.fromJson(Map<String, dynamic> json) =>
      _$SegmentFromJson(json);

  Map<String, dynamic> toJson() => _$SegmentToJson(this);
}
