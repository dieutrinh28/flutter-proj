import 'package:flutter_proj/models/flight/class_info.dart';
import 'package:flutter_proj/models/flight/segment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trip.g.dart';

@JsonSerializable()
class Trip {
  @JsonKey(name: "itinerary_id")
  String? itineraryId;
  @JsonKey(name: "duration")
  String? duration;
  @JsonKey(name: "stop")
  String? stop;
  @JsonKey(name: "segments")
  List<Segment>? segments;
  @JsonKey(name: "class_info")
  List<ClassInfo>? classInfo;

  Trip({
    this.itineraryId,
    this.duration,
    this.stop,
    this.segments,
    this.classInfo,
  });

  Trip copyWith({
    String? itineraryId,
    String? duration,
    String? stop,
    List<Segment>? segments,
    List<ClassInfo>? classInfo,
  }) =>
      Trip(
        itineraryId: itineraryId ?? this.itineraryId,
        duration: duration ?? this.duration,
        stop: stop ?? this.stop,
        segments: segments ?? this.segments,
        classInfo: classInfo ?? this.classInfo,
      );

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  Map<String, dynamic> toJson() => _$TripToJson(this);
}
