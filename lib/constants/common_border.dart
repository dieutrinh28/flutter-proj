import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';

class CommonBorder {
  CommonBorder._();

  static OutlineInputBorder border = OutlineInputBorder(
    borderSide: const BorderSide(
      width: AppDimens.borderWidth,
      color: AppColors.gray300,
    ),
    borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
  );

  static OutlineInputBorder disabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: AppDimens.borderWidth,
      color: AppColors.gray300,
    ),
    borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
  );

  static OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: AppDimens.borderWidth,
      color: AppColors.gray300,
    ),
    borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
  );

  static OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: AppDimens.borderWidth,
      color: AppColors.success500,
    ),
    borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
  );

  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: AppDimens.borderWidth,
      color: AppColors.error500,
    ),
    borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
  );

  static OutlineInputBorder focusedErrorBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: AppDimens.borderWidth,
      color: AppColors.error500,
    ),
    borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
  );
}
