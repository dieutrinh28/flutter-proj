import 'package:flutter_proj/models/flight/baggage.dart';
import 'package:flutter_proj/models/flight/detail_price.dart';
import 'package:flutter_proj/models/flight/policy.dart';
import 'package:json_annotation/json_annotation.dart';

part 'class_info.g.dart';

@JsonSerializable()
class ClassInfo {
  @JsonKey(name: "class_id")
  String? classId;
  @JsonKey(name: "class_name")
  String? className;
  @JsonKey(name: "sub_class_name")
  String? subClassName;
  @JsonKey(name: "total_price")
  double? totalPrice;
  @JsonKey(name: "detail_price")
  List<DetailPrice>? detailPrice;
  @JsonKey(name: "currency")
  String? currency;
  @JsonKey(name: "baggages")
  List<Baggage>? baggages;
  @JsonKey(name: "policy")
  Policy? policy;
  @JsonKey(name: "left_ticket")
  int? leftTicket;

  ClassInfo({
    this.classId,
    this.className,
    this.subClassName,
    this.totalPrice,
    this.detailPrice,
    this.currency,
    this.baggages,
    this.policy,
    this.leftTicket,
  });

  ClassInfo copyWith({
    String? classId,
    String? className,
    String? subClassName,
    double? totalPrice,
    List<DetailPrice>? detailPrice,
    String? currency,
    List<Baggage>? baggages,
    Policy? policy,
    int? leftTicket,
  }) =>
      ClassInfo(
        classId: classId ?? this.classId,
        className: className ?? this.className,
        subClassName: subClassName ?? this.subClassName,
        totalPrice: totalPrice ?? this.totalPrice,
        detailPrice: detailPrice ?? this.detailPrice,
        currency: currency ?? this.currency,
        baggages: baggages ?? this.baggages,
        policy: policy ?? this.policy,
        leftTicket: leftTicket ?? this.leftTicket,
      );

  factory ClassInfo.fromJson(Map<String, dynamic> json) =>
      _$ClassInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ClassInfoToJson(this);
}
