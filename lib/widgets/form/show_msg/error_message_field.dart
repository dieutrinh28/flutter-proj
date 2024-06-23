import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/dimens.dart';

class ErrorMessageField extends StatelessWidget {
  final bool isShowError;
  final String? errorText;

  const ErrorMessageField({
    super.key,
    required this.isShowError,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: !isShowError,
      child: Padding(
        padding: const EdgeInsets.only(top: AppDimens.appPaddingXSmall),
        child: Text(
          errorText ?? "Please fill out this field",
          style: const TextStyle(
            color: Colors.red,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
      ),
    );
  }
}
