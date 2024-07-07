import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/widgets/common/search_field.dart';

class SearchFlightBar extends AppBar {
  final Function()? onBack;
  final Function(String text)? onTextChanged;
  SearchFlightBar({
    super.key,
    this.onBack,
    this.onTextChanged,
  });

  @override
  Widget? get leading => IconButton(
        onPressed: onBack,
        icon: const Icon(
          Icons.chevron_left_outlined,
          color: AppColors.gray700,
          size: AppDimens.iconSizeNormalSmall,
        ),
      );

  @override
  Widget? get title => SearchField(
        onTextChanged: onTextChanged,
      );

  @override
  Color? get backgroundColor => AppColors.gray100;
}
