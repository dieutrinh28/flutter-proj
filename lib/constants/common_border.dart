import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';

class CommonBorder {
  CommonBorder._();

  static OutlineInputBorder border = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.gray300,
    ),
    borderRadius: BorderRadius.circular(8),
  );

  static OutlineInputBorder disabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.gray300,
    ),
    borderRadius: BorderRadius.circular(8),
  );

  static OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.gray300,
    ),
    borderRadius: BorderRadius.circular(8),
  );

  static OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.success500,
    ),
    borderRadius: BorderRadius.circular(8),
  );

  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.error500,
    ),
    borderRadius: BorderRadius.circular(8),
  );

  static OutlineInputBorder focusedErrorBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.error500,
    ),
    borderRadius: BorderRadius.circular(8),
  );
}
