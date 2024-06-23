import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/common_border.dart';
import 'package:flutter_proj/widgets/form/show_msg/error_message_field.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String? initValue;
  final bool enabled;
  final bool required;
  final Function(String)? validator;
  final Function(String) onChanged;
  final Function()? onFinish;

  TextFormFieldCustom({
    super.key,
    this.initValue,
    this.enabled = true,
    this.required = false,
    this.validator,
    required this.onChanged,
    this.onFinish,
  });

  final _errorStreamController = StreamController<String?>();
  final _textEditingController = TextEditingController();
  String _previousInitValue = "";

  String? _validate(String? value) {
    if (required) {
      if (value == null || value.isEmpty) {
        return "Please fill out this field";
      } else {
        if (validator != null) {
          return validator!(value);
        }
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    if (initValue != null && initValue != _previousInitValue) {
      _textEditingController.text = initValue!;
      _textEditingController.selection = TextSelection.fromPosition(
        TextPosition(
          offset: _textEditingController.text.length,
        ),
      );
      _previousInitValue = initValue!;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          controller: _textEditingController,
          validator: (value) {
            final errMsg = _validate(value);
            _errorStreamController.sink.add(errMsg);
            return errMsg;
          },
          onChanged: (value) => onChanged(value),
          onEditingComplete: onFinish,
          enabled: enabled,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              left: 12,
              bottom: 14,
            ),
            border: CommonBorder.border,
            disabledBorder: CommonBorder.disabledBorder,
            enabledBorder: CommonBorder.enabledBorder,
            focusedBorder: CommonBorder.focusedBorder,
            errorBorder: CommonBorder.errorBorder,
            focusedErrorBorder: CommonBorder.focusedErrorBorder,
            errorStyle: const TextStyle(
              fontSize: 0,
              height: 0,
            ),
          ),
        ),
        StreamBuilder(
          stream: _errorStreamController.stream,
          builder: (context, snapshot) {
            return ErrorMessageField(
              isShowError: snapshot.data != null,
              errorText: snapshot.data,
            );
          },
        ),
      ],
    );
  }
}
