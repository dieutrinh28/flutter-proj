import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/extensions/list.dart';
import 'package:flutter_proj/localization/localizations.dart';
import 'package:flutter_proj/routing/route_constants.dart';
import 'package:flutter_proj/screens/login/widgets/text_option.dart';
import 'package:flutter_proj/screens/login/widgets/email_login.dart';
import 'package:flutter_proj/screens/login/widgets/social_login.dart';
import 'package:flutter_proj/widgets/common/app_bar.dart';
import 'package:flutter_proj/widgets/common/primary_button.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context);
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    void onLoginClick() {
      final isValid = formKey.currentState?.validate();
      if (isValid != null && isValid == true) {
        formKey.currentState?.save();
        GoRouter.of(context).pushNamed(RouteConstants.home.name);
      }
    }

    return Scaffold(
      appBar: CommonAppbar(
        title: appLocalizations.login,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimens.appPaddingNormal),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: () {},
            child: Column(
              children: [
                const EmailLogin(),
                PrimaryButton(
                  text: appLocalizations.login,
                  onTap: onLoginClick,
                ),
                const SocialLogin(),
                AnotherOption(
                  subTitle: appLocalizations.doNotHaveAnAccount,
                  mainTitle: appLocalizations.registerAnAccount,
                  onTap: () {},
                ),
                AnotherOption(
                  subTitle: appLocalizations.forgotPassword,
                  mainTitle: appLocalizations.resetPassword,
                  onTap: () {},
                ),
              ].separated(
                const SizedBox(
                  height: AppDimens.separatedLarge,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
