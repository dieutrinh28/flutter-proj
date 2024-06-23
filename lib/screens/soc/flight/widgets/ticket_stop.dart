import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/icons.dart';
import 'package:flutter_proj/utils/package_util.dart';

class TicketStop extends StatelessWidget {
  const TicketStop({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: PackageUtil.createSvgFromAsset(AppIcons.ticketDivider),
        ),
        Center(
          child: PackageUtil.createSvgFromAsset(AppIcons.iconFlight),
        ),
      ],
    );
  }
}
