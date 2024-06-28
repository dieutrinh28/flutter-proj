import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/screens/soc/flight/passenger_information/widget/passenger_item.dart';
import 'package:flutter_proj/widgets/common/app_bar.dart';

class PassengerInformationScreen extends StatelessWidget {
  const PassengerInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseWhite,
      appBar: CommonAppbar(title: "Passenger Information"),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: PassengerItem(),
        ),
      ),
    );
  }
}
