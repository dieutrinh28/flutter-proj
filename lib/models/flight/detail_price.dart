import 'package:json_annotation/json_annotation.dart';

part 'detail_price.g.dart';

@JsonSerializable()
class DetailPrice {
  @JsonKey(name: "passenger_type")
  String? passengerType;
  @JsonKey(name: "price")
  double? price;
  @JsonKey(name: "count")
  int? count;

  DetailPrice({
    this.passengerType,
    this.price,
    this.count,
  });

  factory DetailPrice.fromJson(Map<String, dynamic> json) =>
      _$DetailPriceFromJson(json);

  Map<String, dynamic> toJson() => _$DetailPriceToJson(this);
}
