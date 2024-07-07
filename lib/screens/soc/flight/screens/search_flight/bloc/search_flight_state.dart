part of 'search_flight_bloc.dart';

abstract class SearchFlightState extends Equatable {
  const SearchFlightState();

  @override
  List<Object?> get props => [];
}

class SearchFlightLoading extends SearchFlightState {}

class SearchFlightDataChanged extends SearchFlightState {
  final String searchText;
  final List<Airport> recentCriteriaSearch;
  final List<Continent> continents;

  const SearchFlightDataChanged({
    required this.searchText,
    required this.recentCriteriaSearch,
    required this.continents,
  });

  SearchFlightDataChanged copyWith({
    String? searchText,
    List<Airport>? recentCriteriaSearch,
    List<Continent>? continents,
  }) {
    return SearchFlightDataChanged(
      searchText: searchText ?? this.searchText,
      recentCriteriaSearch: recentCriteriaSearch ?? this.recentCriteriaSearch,
      continents: continents ?? this.continents,
    );
  }

  @override
  List<Object?> get props => [
        searchText,
        recentCriteriaSearch,
        continents,
      ];
}
