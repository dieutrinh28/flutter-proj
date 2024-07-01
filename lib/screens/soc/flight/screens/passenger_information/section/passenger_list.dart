import 'package:flutter/material.dart';
import 'package:flutter_proj/screens/soc/flight/screens/passenger_information/widget/passenger_item.dart';

class PassengerListSection extends StatelessWidget {
  final List<dynamic> passengerList;
  const PassengerListSection({super.key, required this.passengerList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: passengerList.map((e) => const PassengerItem()).toList(),
    );
  }
}
