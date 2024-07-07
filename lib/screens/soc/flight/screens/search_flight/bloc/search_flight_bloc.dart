import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_proj/models/flight/airport.dart';
import 'package:flutter_proj/models/flight/continent.dart';

part 'search_flight_event.dart';
part 'search_flight_state.dart';

class SearchFlightBloc extends Bloc<SearchFlightEvent, SearchFlightState> {
  SearchFlightBloc() : super(SearchFlightLoading()) {
    on<SearchFlightEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
