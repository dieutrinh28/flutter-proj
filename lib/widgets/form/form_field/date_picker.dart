import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/constants/text_styles.dart';
import 'package:flutter_proj/utils/bottom_sheet_util.dart';
import 'package:flutter_proj/widgets/common/bottom_sheet.dart';

class DatePicker extends StatelessWidget {
  final String? initValue;
  final FormFieldValidator? fieldValidator;

  DatePicker({
    super.key,
    this.initValue,
    this.fieldValidator,
  });

  final _valueStyle =
      AppTextStyles.base.size14.w400.withColor(AppColors.gray400);

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      initialValue: initValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return null;
      },
      builder: (state) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                BottomSheetUtil.showBottomSheet(
                    context: context,
                    builder: (context) {
                      return CommonBottomSheet(
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (value) {},
                        ),
                      );
                    });
              },
              child: _buildDateField(),
            )
          ],
        );
      },
    );
  }

  Widget _buildDateField() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.appPaddingNormal,
        vertical: AppDimens.appPaddingNormalSmall,
      ),
      decoration: BoxDecoration(
        color: AppColors.baseWhite,
        borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
        border: Border.all(
          width: 1,
          color: AppColors.gray300,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "value",
            style: _valueStyle,
          ),
          const Icon(
            Icons.calendar_today,
            color: AppColors.gray400,
          )
        ],
      ),
    );
  }
}
