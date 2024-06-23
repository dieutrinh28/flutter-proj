import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/icons.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/text_styles.dart';
import 'package:flutter_proj/localization/localizations.dart';
import 'package:flutter_proj/utils/package_util.dart';
import 'package:go_router/go_router.dart';

class ScaffoldNavigationBottom extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldNavigationBottom({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            activeIcon: PackageUtil.createSvgFromAsset(AppIcons.iconActiveHome),
            icon: PackageUtil.createSvgFromAsset(AppIcons.iconHome),
            label: appLocalizations.home,
          ),
          BottomNavigationBarItem(
            activeIcon: PackageUtil.createSvgFromAsset(
                AppIcons.iconActiveAllProperties),
            icon: PackageUtil.createSvgFromAsset(AppIcons.iconAllProperties),
            label: appLocalizations.allProperties,
          ),
          BottomNavigationBarItem(
            activeIcon:
                PackageUtil.createSvgFromAsset(AppIcons.iconActiveChatting),
            icon: PackageUtil.createSvgFromAsset(AppIcons.iconChatting),
            label: appLocalizations.chatting,
          ),
          BottomNavigationBarItem(
            activeIcon: PackageUtil.createSvgFromAsset(AppIcons.iconActiveNews),
            icon: PackageUtil.createSvgFromAsset(AppIcons.iconNews),
            label: appLocalizations.news,
          ),
          BottomNavigationBarItem(
            activeIcon:
                PackageUtil.createSvgFromAsset(AppIcons.iconActiveMyPage),
            icon: PackageUtil.createSvgFromAsset(AppIcons.iconMyPage),
            label: appLocalizations.myPage,
          ),
        ],
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: AppTextStyles.base.w600.size10,
        unselectedLabelStyle: AppTextStyles.base.w600.size10,
        selectedItemColor: AppColors.brandPrimaryBase,
        unselectedItemColor: AppColors.grayscaleAccent,
        currentIndex: navigationShell.currentIndex,
        onTap: (int tappedIndex) {
          navigationShell.goBranch(tappedIndex);
        },
      ),
    );
  }
}
