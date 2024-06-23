import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/text_styles.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Color? baseColor;
  final IconData? leadingIcon;
  final String? leadingText;
  final void Function()? leadingPressed;
  final String title;
  final TextStyle? titleStyle;
  final IconData? actionIcon;
  final String? actionText;
  final void Function()? actionPressed;

  CommonAppbar({
    super.key,
    this.baseColor = AppColors.brandPrimaryBase,
    this.leadingIcon,
    this.leadingText,
    this.leadingPressed,
    required this.title,
    this.titleStyle,
    this.actionIcon,
    this.actionText,
    this.actionPressed,
  });

  final double _appbarHeight = AppBar().preferredSize.height;

  @override
  Size get preferredSize => Size.fromHeight(_appbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.baseWhite,
      title: Text(
        title,
        style:
            AppTextStyles.base.w600.size18.withColor(AppColors.grayscaleText),
      ),
      centerTitle: true,
      shape: const ContinuousRectangleBorder(
        side: BorderSide(
          color: AppColors.gray300,
          width: 1,
        ),
      ),
      elevation: 0.0,
      surfaceTintColor: AppColors.baseWhite,
      shadowColor: AppColors.baseWhite,
      scrolledUnderElevation: 0,
      leading: GestureDetector(
        onTap: leadingPressed,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Icon(
                leadingIcon,
                color: baseColor,
              ),
              if (leadingText != null)
                Text(
                  leadingText!,
                  style: titleStyle ??
                      TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: baseColor,
                      ),
                ),
            ],
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: actionPressed,
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                if (actionText != null)
                  Text(
                    actionText!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: baseColor,
                    ),
                  ),
                if (actionIcon != null)
                  Icon(
                    actionIcon,
                    color: baseColor,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
