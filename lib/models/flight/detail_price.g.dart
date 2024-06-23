// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailPrice _$DetailPriceFromJson(Map<String, dynamic> json) => DetailPrice(
      passengerType: json['passenger_type'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$DetailPriceToJson(DetailPrice instance) =>
    <String, dynamic>{
      'passenger_type': instance.passengerType,
      'price': instance.price,
      'count': instance.count,
    };
