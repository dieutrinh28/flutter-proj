import 'package:flutter/material.dart';
import 'package:flutter_proj/localization/localizations.dart';
import 'package:flutter_proj/widgets/common/choose_button.dart';

class CommonBottomSheet extends StatefulWidget {
  final Widget child;
  const CommonBottomSheet({super.key, required this.child});

  @override
  State<CommonBottomSheet> createState() => _CommonBottomSheetState();
}

class _CommonBottomSheetState extends State<CommonBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context);
    return LimitedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: widget.child),
          ChooseButton(
            primaryText: appLocalizations.apply,
            secondaryText: appLocalizations.cancel,
          ),
        ],
      ),
    );
  }
}
