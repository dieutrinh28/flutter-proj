// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baggage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Baggage _$BaggageFromJson(Map<String, dynamic> json) => Baggage(
      type: json['type'] as String?,
      number: json['number'] as int?,
      weight: (json['weight'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$BaggageToJson(Baggage instance) => <String, dynamic>{
      'type': instance.type,
      'number': instance.number,
      'weight': instance.weight,
      'unit': instance.unit,
    };
