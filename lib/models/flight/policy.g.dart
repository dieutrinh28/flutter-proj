// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Policy _$PolicyFromJson(Map<String, dynamic> json) => Policy(
      changeFee: (json['change_fee'] as num?)?.toDouble(),
      cancellationFee: (json['cancellation_fee'] as num?)?.toDouble(),
      isRescheduling: json['is_rescheduling'] as bool?,
      isRefundable: json['is_refundable'] as bool?,
    );

Map<String, dynamic> _$PolicyToJson(Policy instance) => <String, dynamic>{
      'change_fee': instance.changeFee,
      'cancellation_fee': instance.cancellationFee,
      'is_rescheduling': instance.isRescheduling,
      'is_refundable': instance.isRefundable,
    };
