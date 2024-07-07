// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'continent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Continent _$ContinentFromJson(Map<String, dynamic> json) => Continent(
      continentName: json['continent_name'] as String?,
      destinationList: (json['destination_list'] as List<dynamic>?)
          ?.map((e) => Airport.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContinentToJson(Continent instance) => <String, dynamic>{
      'continent_name': instance.continentName,
      'destination_list': instance.destinationList,
    };
