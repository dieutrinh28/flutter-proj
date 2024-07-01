import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/constants/text_styles.dart';
import 'package:flutter_proj/localization/localizations.dart';
import 'package:flutter_proj/utils/passenger_type_util.dart';

class AgeTag extends StatelessWidget {
  final PassengerTypeEnum? passengerTypeEnum;
  const AgeTag({super.key, this.passengerTypeEnum});

  static const _opacityColor = 0.05;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context);

    if (passengerTypeEnum == null) {
      return const SizedBox();
    }
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.appPaddingSmall,
        vertical: AppDimens.appPaddingXLSmall,
      ),
      decoration: BoxDecoration(
        color: PassengerTypeUtil.getColor(passengerTypeEnum)
            ?.withOpacity(_opacityColor),
        borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
      ),
      child: Text(
        PassengerTypeUtil.getValue(passengerTypeEnum, appLocalizations) ?? "",
        style: AppTextStyles.base.w500.size12.withColor(
          PassengerTypeUtil.getColor(passengerTypeEnum) ?? Colors.transparent,
        ),
      ),
    );
  }
}
