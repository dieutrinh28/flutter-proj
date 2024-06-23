import 'package:flutter/material.dart';
import 'package:flutter_proj/models/flight/trip.dart';

class FlightCard extends StatelessWidget {
  final Trip? flight;

  const FlightCard({
    super.key,
    this.flight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(flight?.segments?[0].operating?.operatingName ?? ""),
        ],
      ),
    );
  }
}
