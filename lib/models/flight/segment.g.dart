// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Segment _$SegmentFromJson(Map<String, dynamic> json) => Segment(
      origin: json['origin'] == null
          ? null
          : Destination.fromJson(json['origin'] as Map<String, dynamic>),
      destination: json['destination'] == null
          ? null
          : Destination.fromJson(json['destination'] as Map<String, dynamic>),
      departureAt: json['departure_at'] == null
          ? null
          : DateTime.parse(json['departure_at'] as String),
      arrivedAt: json['arrived_at'] == null
          ? null
          : DateTime.parse(json['arrived_at'] as String),
      operating: json['operating'] == null
          ? null
          : Operating.fromJson(json['operating'] as Map<String, dynamic>),
      aircraft: json['aircraft'] as String?,
      duration: json['duration'] as String?,
      isDifferentTerminal: json['is_different_terminal'] as bool?,
      isVisaRequired: json['is_visa_required'] as bool?,
    );

Map<String, dynamic> _$SegmentToJson(Segment instance) => <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'departure_at': instance.departureAt?.toIso8601String(),
      'arrived_at': instance.arrivedAt?.toIso8601String(),
      'operating': instance.operating,
      'aircraft': instance.aircraft,
      'duration': instance.duration,
      'is_different_terminal': instance.isDifferentTerminal,
      'is_visa_required': instance.isVisaRequired,
    };
