import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/constants/text_styles.dart';

class SelectableRow extends StatelessWidget {
  final IconData trailingIcon;
  final Function() onTap;
  final String? initValue;
  final String hintText;
  final TextStyle? valueStyle;
  final TextStyle? hintStyle;
  const SelectableRow({
    super.key,
    required this.trailingIcon,
    required this.onTap,
    this.initValue,
    required this.hintText,
    this.valueStyle,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    final valueStyle = this.hintStyle ??
        AppTextStyles.base.size14.w500.withColor(AppColors.gray700);
    final hintStyle = this.hintStyle ??
        AppTextStyles.base.size14.w400.withColor(AppColors.gray400);

    return Container(
      height: 48,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.gray100,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            trailingIcon,
            size: AppDimens.iconSizeNormalSmall,
            color: AppColors.gray700,
          ),
          Expanded(
            child: GestureDetector(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.only(left: AppDimens.appPaddingSmall),
                child: Text(
                  initValue ?? hintText,
                  style: initValue == null ? hintStyle : valueStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
