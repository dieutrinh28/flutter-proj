import 'package:json_annotation/json_annotation.dart';

part 'policy.g.dart';

@JsonSerializable()
class Policy {
  @JsonKey(name: "change_fee")
  double? changeFee;
  @JsonKey(name: "cancellation_fee")
  double? cancellationFee;
  @JsonKey(name: "is_rescheduling")
  bool? isRescheduling;
  @JsonKey(name: "is_refundable")
  bool? isRefundable;

  Policy({
    this.changeFee,
    this.cancellationFee,
    this.isRescheduling,
    this.isRefundable,
  });

  Policy copyWith({
    double? changeFee,
    double? isCancellationFee,
    bool? isRescheduling,
    bool? isRefundable,
  }) =>
      Policy(
        changeFee: changeFee ?? this.changeFee,
        cancellationFee: cancellationFee ?? this.cancellationFee,
        isRescheduling: isRescheduling ?? this.isRescheduling,
        isRefundable: isRefundable ?? this.isRefundable,
      );

  factory Policy.fromJson(Map<String, dynamic> json) => _$PolicyFromJson(json);

  Map<String, dynamic> toJson() => _$PolicyToJson(this);
}
