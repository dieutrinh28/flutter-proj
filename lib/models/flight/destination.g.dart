// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Destination _$DestinationFromJson(Map<String, dynamic> json) => Destination(
      airportCode: json['airport_code'] as String?,
      airportName: json['airport_name'] as String?,
      cityName: json['city_name'] as String?,
    );

Map<String, dynamic> _$DestinationToJson(Destination instance) =>
    <String, dynamic>{
      'airport_code': instance.airportCode,
      'airport_name': instance.airportName,
      'city_name': instance.cityName,
    };
