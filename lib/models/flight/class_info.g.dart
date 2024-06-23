// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassInfo _$ClassInfoFromJson(Map<String, dynamic> json) => ClassInfo(
      classId: json['class_id'] as String?,
      className: json['class_name'] as String?,
      subClassName: json['sub_class_name'] as String?,
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      detailPrice: (json['detail_price'] as List<dynamic>?)
          ?.map((e) => DetailPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      currency: json['currency'] as String?,
      baggages: (json['baggages'] as List<dynamic>?)
          ?.map((e) => Baggage.fromJson(e as Map<String, dynamic>))
          .toList(),
      policy: json['policy'] == null
          ? null
          : Policy.fromJson(json['policy'] as Map<String, dynamic>),
      leftTicket: json['left_ticket'] as int?,
    );

Map<String, dynamic> _$ClassInfoToJson(ClassInfo instance) => <String, dynamic>{
      'class_id': instance.classId,
      'class_name': instance.className,
      'sub_class_name': instance.subClassName,
      'total_price': instance.totalPrice,
      'detail_price': instance.detailPrice,
      'currency': instance.currency,
      'baggages': instance.baggages,
      'policy': instance.policy,
      'left_ticket': instance.leftTicket,
    };
