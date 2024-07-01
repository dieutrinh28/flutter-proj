import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/screens/soc/flight/screens/home/widget/selectable_row.dart';

class ChooseDestination extends StatelessWidget {
  final String? from;
  final String? to;
  final Function() onSwitchTap;
  final Function() onChooseFromTap;
  final Function() onChooseToTap;
  const ChooseDestination({
    super.key,
    this.from,
    this.to,
    required this.onSwitchTap,
    required this.onChooseFromTap,
    required this.onChooseToTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Column(
          children: [
            SelectableRow(
              trailingIcon: Icons.airplanemode_active_outlined,
              onTap: onChooseFromTap,
              hintText: "Going from",
              initValue: from,
            ),
            SelectableRow(
              trailingIcon: Icons.location_on_outlined,
              onTap: onChooseToTap,
              hintText: "Going to",
              initValue: to,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: AppDimens.appPaddingNormal),
          child: SwitchDestinationButton(
            onTap: onSwitchTap,
          ),
        ),
      ],
    );
  }
}

class SwitchDestinationButton extends StatelessWidget {
  final Function()? onTap;
  const SwitchDestinationButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColors.baseWhite,
        boxShadow: [
          BoxShadow(
            color: AppColors.gray700.withOpacity(0.25),
            offset: const Offset(0, 0),
            spreadRadius: -2,
            blurRadius: 8,
          ),
        ],
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(AppDimens.appPaddingSmall),
          child: const Icon(
            Icons.swap_vert,
            size: AppDimens.iconSizeNormalSmall,
            color: AppColors.primary700,
          ),
        ),
      ),
    );
  }
}
