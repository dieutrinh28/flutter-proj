// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Airport _$AirportFromJson(Map<String, dynamic> json) => Airport(
      cityName: json['city_name'] as String?,
      country: json['country'] as String?,
      airportName: json['airport_name'] as String?,
      iataCode: json['iata_code'] as String?,
      objectType: json['object_type'] as String?,
    );

Map<String, dynamic> _$AirportToJson(Airport instance) => <String, dynamic>{
      'city_name': instance.cityName,
      'country': instance.country,
      'airport_name': instance.airportName,
      'iata_code': instance.iataCode,
      'object_type': instance.objectType,
    };
