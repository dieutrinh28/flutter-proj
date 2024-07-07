part of 'search_flight_bloc.dart';

abstract class SearchFlightEvent extends Equatable {
  const SearchFlightEvent();
}

class SearchTextChangedEvent extends SearchFlightEvent {
  final String text;

  const SearchTextChangedEvent({required this.text});

  @override
  List<Object?> get props => [text];
}

class SearchCriteriaSelectedEvent extends SearchFlightEvent {
  final String text;

  const SearchCriteriaSelectedEvent({required this.text});

  @override
  List<Object?> get props => [text];
}
