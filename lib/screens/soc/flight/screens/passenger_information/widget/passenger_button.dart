import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/constants/text_styles.dart';
import 'package:flutter_proj/extensions/list.dart';
import 'package:flutter_proj/screens/soc/flight/screens/passenger_information/widget/gender_tag.dart';
import 'package:flutter_proj/utils/passenger_type_util.dart';

class PassengerButton extends StatelessWidget {
  PassengerButton({super.key});

  final _titleStyle =
      AppTextStyles.base.w600.size14.withColor(AppColors.gray900);

  final _subTitleStyle = AppTextStyles.base.w400.size12.withColor(
    AppColors.gray700,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.appPaddingNormal,
        vertical: AppDimens.appPaddingNormalSmall,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
        color: AppColors.gray50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Adult 1",
                style: _titleStyle,
              ),
              Text(
                "Full Name",
                style: _subTitleStyle,
              ),
            ],
          ),
          Row(
            children: [
              const AgeTag(passengerTypeEnum: PassengerTypeEnum.adult),
              const Icon(Icons.keyboard_arrow_down),
            ].separated(const SizedBox(
              width: 4,
            )),
          )
        ],
      ),
    );
  }
}
