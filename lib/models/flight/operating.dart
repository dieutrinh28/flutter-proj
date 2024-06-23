import 'package:json_annotation/json_annotation.dart';

part 'operating.g.dart';

@JsonSerializable()
class Operating {
  @JsonKey(name: "operating_id")
  String? operatingId;
  @JsonKey(name: "operating_code")
  String? operatingCode;
  @JsonKey(name: "operating_name")
  String? operatingName;
  @JsonKey(name: "operating_image_id")
  String? operatingImageId;
  @JsonKey(name: "operating_image_url")
  String? operatingImageUrl;
  @JsonKey(name: "operating_number")
  String? operatingNumber;

  Operating({
    this.operatingId,
    this.operatingCode,
    this.operatingName,
    this.operatingImageId,
    this.operatingImageUrl,
    this.operatingNumber,
  });

  Operating copyWith({
    String? operatingId,
    String? operatingCode,
    String? operatingName,
    String? operatingImageId,
    String? operatingImageUrl,
    String? operatingNumber,
  }) =>
      Operating(
        operatingId: operatingId ?? this.operatingId,
        operatingCode: operatingCode ?? this.operatingCode,
        operatingName: operatingName ?? this.operatingName,
        operatingImageId: operatingImageId ?? this.operatingImageId,
        operatingImageUrl: operatingImageUrl ?? this.operatingImageUrl,
        operatingNumber: operatingNumber ?? this.operatingNumber,
      );

  factory Operating.fromJson(Map<String, dynamic> json) =>
      _$OperatingFromJson(json);

  Map<String, dynamic> toJson() => _$OperatingToJson(this);
}
