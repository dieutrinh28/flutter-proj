import 'package:flutter_proj/models/flight/flight.dart';
import 'package:flutter_proj/models/flight/operating_key.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_by_criteria.g.dart';

@JsonSerializable()
class SearchByCriteria {
  @JsonKey(name: "total")
  int? total;
  @JsonKey(name: "page_num")
  int? pageNum;
  @JsonKey(name: "page_size")
  int? pageSize;
  @JsonKey(name: "more_page")
  bool? morePage;
  @JsonKey(name: "operating_keys")
  List<OperatingKey>? operatingKeys;
  @JsonKey(name: "flights")
  List<Flight>? flights;
  @JsonKey(name: "is_round_trip")
  bool? isRoundTrip;
  @JsonKey(name: "is_combo_price")
  bool? isComboPrice;

  SearchByCriteria({
    this.total,
    this.pageNum,
    this.pageSize,
    this.morePage,
    this.operatingKeys,
    this.flights,
    this.isRoundTrip,
    this.isComboPrice,
  });

  SearchByCriteria copyWith({
    int? total,
    int? pageNum,
    int? pageSize,
    bool? morePage,
    List<OperatingKey>? operatingKeys,
    List<Flight>? flights,
    bool? isRoundTrip,
    bool? isComboPrice,
  }) =>
      SearchByCriteria(
        total: total ?? this.total,
        pageNum: pageNum ?? this.pageNum,
        pageSize: pageSize ?? this.pageSize,
        morePage: morePage ?? this.morePage,
        operatingKeys: operatingKeys ??
            this.operatingKeys?.map((e) => e.copyWith()).toList(),
        flights: flights ?? this.flights?.map((e) => e.copyWith()).toList(),
        isRoundTrip: isRoundTrip ?? this.isRoundTrip,
        isComboPrice: isComboPrice ?? this.isComboPrice,
      );

  factory SearchByCriteria.fromJson(Map<String, dynamic> json) =>
      _$SearchByCriteriaFromJson(json);

  Map<String, dynamic> toJson() => _$SearchByCriteriaToJson(this);
}
