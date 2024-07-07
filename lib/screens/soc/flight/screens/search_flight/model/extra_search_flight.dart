import 'package:equatable/equatable.dart';

class ExtraSearchFlightModel extends Equatable {
  final String? searchText;

  const ExtraSearchFlightModel({
    required this.searchText,
  });

  @override
  List<Object?> get props => [searchText];
}
