import 'package:flutter/material.dart';
import 'package:flutter_proj/routing/route_constants.dart';
import 'package:flutter_proj/widgets/common/primary_button.dart';
import 'package:go_router/go_router.dart';

class SocScreen extends StatelessWidget {
  const SocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PrimaryButton(
                text: "Flight",
                onTap: () {
                  GoRouter.of(context)
                      .pushNamed(RouteConstants.searchFlightResult.name);
                }),
            PrimaryButton(
                text: "Policy Html",
                onTap: () {
                  GoRouter.of(context)
                      .pushNamed(RouteConstants.policyHtml.name);
                }),
            PrimaryButton(
                text: "Policy Web View",
                onTap: () {
                  GoRouter.of(context)
                      .pushNamed(RouteConstants.policyWebView.name);
                }),
          ],
        ),
      ),
    );
  }
}
