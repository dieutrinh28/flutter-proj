import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
)
class Result<T> {
  final T? data;
  final bool? success;
  final Error? error;

  Result({
    this.data,
    this.success,
    this.error,
  });

  bool hasError() {
    return error != null || data == null;
  }

  Result<T> copyWith({
    T? data,
    bool? success,
    Error? error,
  }) {
    return Result(
      data: data ?? this.data,
      success: success ?? this.success,
      error: error ?? this.error,
    );
  }

  factory Result.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResultFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ResultToJson(this, toJsonT);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Error {
  final int? code;
  final String? message;

  Error({
    this.code,
    this.message,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}
