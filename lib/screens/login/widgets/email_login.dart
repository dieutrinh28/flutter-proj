import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/text_styles.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/extensions/list.dart';
import 'package:flutter_proj/localization/localizations.dart';
import 'package:flutter_proj/widgets/form/form_field/text_form_field_custom.dart';

class EmailLogin extends StatelessWidget {
  const EmailLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context);
    final titleStyle = AppTextStyles.base.w600.size14.withColor(
      AppColors.grayscaleText,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          appLocalizations.email,
          style: titleStyle,
        ),
        TextFormFieldCustom(
          required: true,
          onChanged: (value) {},
        ),
        const SizedBox(
          height: AppDimens.appPaddingSmall,
        ),
        Text(
          appLocalizations.password,
          style: titleStyle,
        ),
        TextFormFieldCustom(
          required: true,
          onChanged: (value) {},
        ),
      ].separated(
        const SizedBox(
          height: AppDimens.appPaddingSmall,
        ),
      ),
    );
  }
}
