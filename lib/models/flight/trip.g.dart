// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trip _$TripFromJson(Map<String, dynamic> json) => Trip(
      itineraryId: json['itinerary_id'] as String?,
      duration: json['duration'] as String?,
      stop: json['stop'] as String?,
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
      classInfo: (json['class_info'] as List<dynamic>?)
          ?.map((e) => ClassInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TripToJson(Trip instance) => <String, dynamic>{
      'itinerary_id': instance.itineraryId,
      'duration': instance.duration,
      'stop': instance.stop,
      'segments': instance.segments,
      'class_info': instance.classInfo,
    };
