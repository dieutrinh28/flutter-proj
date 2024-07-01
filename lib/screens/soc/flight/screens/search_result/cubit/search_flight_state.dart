part of 'search_flight_cubit.dart';

abstract class SearchFlightState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SearchFlightInitial extends SearchFlightState {}

class SearchFlightLoading extends SearchFlightState {}

class SearchFlightSuccess extends SearchFlightState {
  final SearchByCriteria? response;

  SearchFlightSuccess({this.response});

  @override
  List<Object?> get props => [response];
}

class SearchFlightFailed extends SearchFlightState {}
