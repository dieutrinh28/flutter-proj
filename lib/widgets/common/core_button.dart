import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/constants/text_styles.dart';

class CoreButton extends StatelessWidget {
  final Function()? onTap;
  final Color bgColor;
  final Color disableBgColor;
  final Color borderColor;
  final BorderRadius? borderRadius;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final double iconFontSize;
  final Color iconColor;
  final String text;
  final Color textColor;
  final TextStyle? textStyle;

  const CoreButton({
    super.key,
    this.onTap,
    this.bgColor = AppColors.baseWhite,
    this.disableBgColor = AppColors.baseWhite,
    this.borderColor = AppColors.baseWhite,
    this.borderRadius,
    this.leadingIcon,
    this.trailingIcon,
    this.iconFontSize = AppDimens.iconSizeNormalSmall,
    this.iconColor = AppColors.baseWhite,
    required this.text,
    this.textColor = AppColors.baseWhite,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: borderRadius ??
              BorderRadius.circular(AppDimens.borderRadiusNormal),
          border: Border.all(
            width: 1,
            color: borderColor,
          )
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (leadingIcon != null) ...[
                Icon(
                  leadingIcon,
                  size: iconFontSize,
                  color: iconColor,
                )
              ],
              Text(
                text,
                style: textStyle ?? AppTextStyles.base.withColor(textColor),
              ),
              if (trailingIcon != null) ...[
                Icon(
                  trailingIcon,
                  size: iconFontSize,
                  color: iconColor,
                )
              ],
            ],
          ),
        ),
      ),
    );
  }
}
