import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/icons.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/extensions/list.dart';
import 'package:flutter_proj/screens/home/widgets/category_container.dart';
import 'package:flutter_proj/screens/home/widgets/search_container.dart';
import 'package:flutter_proj/utils/package_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.baseWhite,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PackageUtil.createSvgFromAsset(AppIcons.brandIcon),
            PackageUtil.createSvgFromAsset(AppIcons.logoIcon),
          ].separated(
            const SizedBox(
              width: AppDimens.separatedSmall,
            ),
          ),
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(AppDimens.appPaddingNormal),
          child: Column(
            children: [
              SearchContainer(),
              CategoryContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
