import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/widgets/common/core_button.dart';

class TertiaryButton extends CoreButton {
  const TertiaryButton({
    super.key,
    required super.text,
    super.onTap,
    super.bgColor = AppColors.baseWhite,
    super.textColor = AppColors.brandPrimaryBase,
    super.iconColor = AppColors.brandPrimaryBase,
    super.borderColor = AppColors.baseWhite,
    super.leadingIcon,
    super.trailingIcon,
  });
}