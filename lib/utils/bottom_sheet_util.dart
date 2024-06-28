import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';

class BottomSheetUtil {
  const BottomSheetUtil._();

  static Future<T> showBottomSheet<T>({
    required BuildContext context,
    required Widget Function(BuildContext) builder,
  }) async {
    final data = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return builder(context);
      },
      backgroundColor: AppColors.baseWhite,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        side: BorderSide(
          width: 1,
          color: AppColors.gray300,
          style: BorderStyle.solid,
        ),
      ),
      constraints: const BoxConstraints(maxHeight: double.infinity),
      isScrollControlled: false,
      isDismissible: false,
      enableDrag: true,
      showDragHandle: true,
      useSafeArea: true,
    );
    return data;
  }
}
