// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Operating _$OperatingFromJson(Map<String, dynamic> json) => Operating(
      operatingId: json['operating_id'] as String?,
      operatingCode: json['operating_code'] as String?,
      operatingName: json['operating_name'] as String?,
      operatingImageId: json['operating_image_id'] as String?,
      operatingImageUrl: json['operating_image_url'] as String?,
      operatingNumber: json['operating_number'] as String?,
    );

Map<String, dynamic> _$OperatingToJson(Operating instance) => <String, dynamic>{
      'operating_id': instance.operatingId,
      'operating_code': instance.operatingCode,
      'operating_name': instance.operatingName,
      'operating_image_id': instance.operatingImageId,
      'operating_image_url': instance.operatingImageUrl,
      'operating_number': instance.operatingNumber,
    };
