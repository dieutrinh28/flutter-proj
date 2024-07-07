import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/common_border.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/localization/localizations.dart';

class SearchField extends StatefulWidget {
  final String? hintText;
  final Function(String text)? onSubmit;
  final void Function(String text)? onTextChanged;

  const SearchField({
    super.key,
    this.hintText,
    this.onSubmit,
    this.onTextChanged,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late final FocusNode _focusNode;
  late final TextEditingController _controller;
  late final AppLocalizations _appLocalizations = AppLocalizations.of(context);

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: AppColors.gray100,
        borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
        boxShadow: _focusNode.hasFocus
            ? const [
                BoxShadow(
                  color: AppColors.primary100,
                  offset: Offset(0, 0),
                  spreadRadius: 4,
                ),
              ]
            : null,
      ),
      child: TextField(
        autofocus: false,
        focusNode: _focusNode,
        controller: _controller,
        onChanged: widget.onTextChanged,
        onSubmitted: widget.onSubmit,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: AppDimens.appMarginSmall),
          prefixIcon: const Icon(Icons.search),
          hintText: widget.hintText ?? _appLocalizations.search,
          border: CommonBorder.border,
        ),
      ),
    );
  }
}
