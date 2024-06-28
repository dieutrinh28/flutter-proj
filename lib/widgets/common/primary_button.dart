import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/widgets/common/core_button.dart';

class PrimaryButton extends CoreButton {
  const PrimaryButton({
    super.key,
    required super.text,
    super.onTap,
    super.bgColor = AppColors.brandPrimaryBase,
    super.textColor = AppColors.baseWhite,
    super.iconColor = AppColors.baseWhite,
    super.borderColor = AppColors.brandPrimaryBase,
    super.leadingIcon,
    super.trailingIcon,
  });
}
