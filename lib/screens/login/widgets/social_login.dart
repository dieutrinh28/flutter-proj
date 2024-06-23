import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/icons.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/extensions/list.dart';
import 'package:flutter_proj/localization/localizations.dart';
import 'package:flutter_proj/utils/package_util.dart';
import 'package:flutter_proj/widgets/common/dashed_line.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  static const dashSpace = 0.0;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context);

    return Column(
      children: [
        DashedLine(
          dashSpace: dashSpace,
          child: Text(appLocalizations.orSocialLogin),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PackageUtil.createSvgFromAsset(
              AppIcons.googleIcon,
              width: AppDimens.iconSizeLarge,
              height: AppDimens.iconSizeLarge,
            ),
            PackageUtil.createSvgFromAsset(
              AppIcons.facebookIcon,
              width: AppDimens.iconSizeLarge,
              height: AppDimens.iconSizeLarge,
            ),
            PackageUtil.createSvgFromAsset(
              AppIcons.appleIcon,
              width: AppDimens.iconSizeLarge,
              height: AppDimens.iconSizeLarge,
            ),
          ].separated(
            const SizedBox(
              width: AppDimens.separatedLarge,
            ),
          ),
        ),
      ],
    );
  }
}
