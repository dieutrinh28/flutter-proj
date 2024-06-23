import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/icons.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/utils/package_util.dart';

enum ToastStatusEnum { success, error, warming }

class ToastUtil {
  const ToastUtil._();

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> show(
    BuildContext context,
    String message, {
    ToastStatusEnum status = ToastStatusEnum.success,
    Duration? duration,
  }) {
    return ScaffoldMessenger.of(context).showSnackBar(
      _createSnackBar(context, message, status, duration),
    );
  }

  static SnackBar _createSnackBar(BuildContext context, String message,
      ToastStatusEnum status, Duration? duration) {
    Color backgroundColor;
    Color borderColor;
    Color closeButtonColor;
    Color titleColor;
    Widget icon;

    switch (status) {
      case ToastStatusEnum.success:
        {
          backgroundColor = AppColors.success250;
          borderColor = AppColors.success300;
          closeButtonColor = AppColors.success500;
          titleColor = AppColors.success700;
          icon = PackageUtil.createSvgFromAsset(AppIcons.iconSuccess);
          break;
        }
      case ToastStatusEnum.error:
        {
          backgroundColor = AppColors.error250;
          borderColor = AppColors.error300;
          closeButtonColor = AppColors.error500;
          titleColor = AppColors.error700;
          icon = PackageUtil.createSvgFromAsset(AppIcons.iconError);
          break;
        }
      case ToastStatusEnum.warming:
        {
          backgroundColor = AppColors.warning250;
          borderColor = AppColors.warning300;
          closeButtonColor = AppColors.warning500;
          titleColor = AppColors.warning700;
          icon = PackageUtil.createSvgFromAsset(AppIcons.iconWarning);
          break;
        }
    }

    final content = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDimens.appPaddingSmall),
          child: icon,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.appPaddingXSmall),
            child: Text(
              message,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: titleColor,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 36,
          height: 36,
          child: GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
            child: Icon(
              Icons.close,
              color: closeButtonColor,
            ),
          ),
        ),
      ],
    );
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: duration ?? const Duration(seconds: 3),
      padding: const EdgeInsets.all(8),
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(
        bottom: 34,
        right: 16,
        left: 16,
      ),
      content: content,
    );
  }
}
