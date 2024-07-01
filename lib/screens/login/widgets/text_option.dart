import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/text_styles.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/extensions/list.dart';

class AnotherOption extends StatelessWidget {
  final String subTitle;
  final String mainTitle;
  final Function() onTap;

  const AnotherOption({
    super.key,
    required this.subTitle,
    required this.mainTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          subTitle,
          style:
              AppTextStyles.base.w400.size14.withColor(AppColors.grayscaleText),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            mainTitle,
            style: AppTextStyles.base.w600.size14
                .withColor(AppColors.brandPrimaryBase),
          ),
        )
      ].separated(
        const SizedBox(
          height: AppDimens.separatedSmall,
        ),
      ),
    );
  }
}
