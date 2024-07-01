import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/screens/soc/flight/screens/home/section/main_search.dart';

class FlightHomeScreen extends StatelessWidget {
  const FlightHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.gray100,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: MainSearchSection(),
            ),
          ],
        ),
      ),
    );
  }
}
