import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/constants/text_styles.dart';
import 'package:flutter_proj/extensions/list.dart';

class CommonField extends StatelessWidget {
  final String title;
  final Widget child;
  const CommonField({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: title,
                  style: AppTextStyles.base.w500.size14
                      .withColor(AppColors.gray700),
                  children: [
                    TextSpan(
                      text: ' *',
                      style: AppTextStyles.base.w900.size12
                          .withColor(AppColors.error600),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        child,
      ].separated(const SizedBox(
        height: AppDimens.separatedSmall,
      )),
    );
  }
}
