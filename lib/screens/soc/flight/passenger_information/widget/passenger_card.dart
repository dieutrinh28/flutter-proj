import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/constants/text_styles.dart';
import 'package:flutter_proj/extensions/list.dart';
import 'package:flutter_proj/widgets/common/field.dart';
import 'package:flutter_proj/widgets/form/form_field/date_picker.dart';

class PassengerCard extends StatelessWidget {
  final Function()? onTap;
  PassengerCard({super.key, this.onTap});

  final _passengerTypeStyle = AppTextStyles.base.w600.size14.withColor(
    AppColors.primary600,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.appPaddingNormal),
      decoration: BoxDecoration(
        color: AppColors.primary50,
        borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
        border: Border.all(
          width: AppDimens.borderWidth,
          color: AppColors.primary200,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Adult",
                  style: _passengerTypeStyle,
                ),
                const Icon(Icons.keyboard_arrow_up)
              ],
            ),
          ),
          Column(
            children: [
              CommonField(
                title: "Date of birth",
                child: DatePicker(),
              ),
            ],
          )
        ].separated(const SizedBox(
          height: AppDimens.separatedNormal,
        )),
      ),
    );
  }
}
