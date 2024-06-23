import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_proj/models/flight/trip.dart';
import 'package:flutter_proj/screens/soc/flight/search_flight_result/cubit/search_flight_cubit.dart';
import 'package:flutter_proj/screens/soc/flight/search_flight_result/widgets/flight_card.dart';
import 'package:flutter_proj/screens/soc/flight/widgets/ticket_card.dart';

class SearchFlightResultScreen extends StatelessWidget {
  const SearchFlightResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<SearchFlightCubit, SearchFlightState>(
        builder: (context, state) {
          if (state is SearchFlightLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is SearchFlightSuccess) {
            final response = state.response;
            final List<Trip> flights = response?.flights?[0].oneWayTrip ?? [];
            return ListView.builder(
                itemCount: flights.length,
                itemBuilder: (context, index) {
                  // return FlightCard(flight: flights[index]);
                  return TicketCard();
                });
          }
          if (state is SearchFlightFailed) {
            return Text("failed");
          }
          return Text("not success");
        },
      ),
    );
  }
}
