// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_by_criteria.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchByCriteria _$SearchByCriteriaFromJson(Map<String, dynamic> json) =>
    SearchByCriteria(
      total: json['total'] as int?,
      pageNum: json['page_num'] as int?,
      pageSize: json['page_size'] as int?,
      morePage: json['more_page'] as bool?,
      operatingKeys: (json['operating_keys'] as List<dynamic>?)
          ?.map((e) => OperatingKey.fromJson(e as Map<String, dynamic>))
          .toList(),
      flights: (json['flights'] as List<dynamic>?)
          ?.map((e) => Flight.fromJson(e as Map<String, dynamic>))
          .toList(),
      isRoundTrip: json['is_round_trip'] as bool?,
      isComboPrice: json['is_combo_price'] as bool?,
    );

Map<String, dynamic> _$SearchByCriteriaToJson(SearchByCriteria instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page_num': instance.pageNum,
      'page_size': instance.pageSize,
      'more_page': instance.morePage,
      'operating_keys': instance.operatingKeys,
      'flights': instance.flights,
      'is_round_trip': instance.isRoundTrip,
      'is_combo_price': instance.isComboPrice,
    };
