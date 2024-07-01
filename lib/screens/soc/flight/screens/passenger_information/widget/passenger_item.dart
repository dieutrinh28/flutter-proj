import 'package:flutter/material.dart';
import 'package:flutter_proj/screens/soc/flight/screens/passenger_information/widget/passenger_button.dart';
import 'package:flutter_proj/screens/soc/flight/screens/passenger_information/widget/passenger_card.dart';

class PassengerItem extends StatefulWidget {
  const PassengerItem({super.key});

  @override
  State<PassengerItem> createState() => _PassengerItemState();
}

class _PassengerItemState extends State<PassengerItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          maintainState: true,
          visible: isExpanded,
          child: PassengerCard(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
        ),
        Visibility(
          visible: !isExpanded,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: PassengerButton(),
          ),
        ),
      ],
    );
  }
}
