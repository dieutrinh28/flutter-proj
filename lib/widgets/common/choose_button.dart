import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/extensions/list.dart';
import 'package:flutter_proj/localization/localizations.dart';
import 'package:flutter_proj/widgets/common/primary_button.dart';
import 'package:flutter_proj/widgets/common/secondary_button.dart';

class ChooseButton extends StatelessWidget {
  final String? primaryText;
  final String? secondaryText;
  final Function()? primaryTap;
  final Function()? secondaryTap;

  const ChooseButton({
    super.key,
    this.primaryText,
    this.secondaryText,
    this.primaryTap,
    this.secondaryTap,
  });

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context);

    return Container(
      padding: const EdgeInsets.all(AppDimens.appPaddingNormal),
      decoration: const BoxDecoration(
        color: AppColors.baseWhite,
      ),
      child: Row(
        children: [
          Expanded(
            child: SecondaryButton(
              text: secondaryText ?? appLocalizations.cancel,
              onTap: secondaryTap,
            ),
          ),
          Expanded(
            child: PrimaryButton(
              text: primaryText ?? appLocalizations.apply,
              onTap: primaryTap,
            ),
          ),
        ].separated(const SizedBox(width: AppDimens.separatedSmall)),
      ),
    );
  }
}
