import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/constants/strings.dart';
import 'package:flutter_proj/constants/text_styles.dart';
import 'package:flutter_proj/extensions/list.dart';
import 'package:flutter_proj/localization/localizations.dart';
import 'package:flutter_proj/screens/soc/flight/screens/home/widget/selectable_row.dart';
import 'package:flutter_proj/utils/bottom_sheet_util.dart';
import 'package:flutter_proj/widgets/common/bottom_sheet.dart';
import 'package:go_router/go_router.dart';

class ChoosePerson extends StatelessWidget {
  final int adult;
  final int child;
  final int infant;
  final Function(int) callBackAdult;
  final Function(int) callBackChild;
  final Function(int) callBackInfant;

  const ChoosePerson({
    super.key,
    required this.adult,
    required this.child,
    required this.infant,
    required this.callBackAdult,
    required this.callBackChild,
    required this.callBackInfant,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableRow(
      initValue: [
        adult,
        child,
        infant,
      ].join(", "),
      trailingIcon: Icons.person,
      onTap: () {
        BottomSheetUtil.showBottomSheet(
          context: context,
          builder: (context) {
            return ChoosePersonPopup(
              adult: adult,
              child: child,
              infant: infant,
              callBackAdult: callBackAdult,
              callBackChild: callBackChild,
              callBackInfant: callBackInfant,
            );
          },
        );
      },
      hintText: "",
    );
  }
}

class ChoosePersonPopup extends StatefulWidget {
  final int adult;
  final int child;
  final int infant;
  final Function(int) callBackAdult;
  final Function(int) callBackChild;
  final Function(int) callBackInfant;

  const ChoosePersonPopup({
    super.key,
    required this.adult,
    required this.child,
    required this.infant,
    required this.callBackAdult,
    required this.callBackChild,
    required this.callBackInfant,
  });

  @override
  State<ChoosePersonPopup> createState() => _ChoosePersonPopupState();
}

class _ChoosePersonPopupState extends State<ChoosePersonPopup> {
  static const _maxAmountChildAdult = 9;
  static const _maxAmountInfant = 3;
  static const _maxAmountChild = 6;
  static const _maxAmountAdult = 9;
  static const _minAmountAdult = 1;
  static const _minAmountChild = 0;
  static const _minAmountInfant = 0;

  late final AppLocalizations _appLocalizations = AppLocalizations.of(context);
  late int _adult;
  late int _child;
  late int _infant;

  @override
  void initState() {
    _adult = widget.adult;
    _child = widget.child;
    _infant = widget.infant;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ChoosePersonPopup oldWidget) {
    if (oldWidget.adult != widget.adult) {
      _adult = widget.adult;
    }
    if (oldWidget.child != widget.child) {
      _child = widget.child;
    }
    if (oldWidget.infant != widget.infant) {
      _infant = widget.infant;
    }
    super.didUpdateWidget(oldWidget);
  }

  int _validateMaxAdult() {
    if ((_maxAmountChildAdult - _child) >= _maxAmountAdult) {
      return _maxAmountAdult;
    } else {
      return _maxAmountChildAdult - _child;
    }
  }

  int _validateMaxChild() {
    if ((_maxAmountChildAdult - _adult) >= _maxAmountChild) {
      return _maxAmountChild;
    } else {
      return _maxAmountChildAdult - _adult;
    }
  }

  int _validateMaxInfant() {
    if (_adult > _maxAmountInfant) {
      return _maxAmountInfant;
    } else {
      return _adult;
    }
  }

  int _validateMinAdult() {
    if (_adult == _infant) {
      return _infant;
    } else {
      return _minAmountAdult;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CommonBottomSheet(
      onSave: () {
        widget.callBackAdult(_adult);
        widget.callBackChild(_child);
        widget.callBackInfant(_infant);
        context.pop();
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppDimens.appPaddingNormal),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            NumberSelector(
              title: _appLocalizations.adult,
              subTitle: _appLocalizations.ageOfAdult,
              initValue: _adult,
              minValue: _validateMinAdult(),
              maxValue: _validateMaxAdult(),
              onChanged: (adult) {
                setState(() {
                  _adult = adult;
                });
              },
            ),
            NumberSelector(
              title: _appLocalizations.child,
              subTitle: _appLocalizations.ageOfChild,
              initValue: _child,
              minValue: _minAmountChild,
              maxValue: _validateMaxChild(),
              onChanged: (child) {
                setState(() {
                  _child = child;
                });
              },
            ),
            NumberSelector(
              title: _appLocalizations.infant,
              subTitle: _appLocalizations.ageOfInfant,
              initValue: _infant,
              minValue: _minAmountInfant,
              maxValue: _validateMaxInfant(),
              onChanged: (infant) {
                setState(() {
                  _infant = infant;
                });
              },
            ),
          ].separated(const SizedBox(
            height: AppDimens.separatedNormal,
          )),
        ),
      ),
    );
  }
}

class NumberSelector extends StatefulWidget {
  final String title;
  final String subTitle;
  final int initValue;
  final int? minValue;
  final int? maxValue;
  final Function(int) onChanged;

  const NumberSelector({
    super.key,
    required this.title,
    required this.subTitle,
    required this.initValue,
    this.minValue,
    this.maxValue,
    required this.onChanged,
  });

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  int _value = 0;
  int _minValue = 0;
  int _maxValue = AppStrings.maxSafeInt;

  @override
  void initState() {
    _value = widget.initValue;
    _minValue = widget.minValue ?? _minValue;
    _maxValue = widget.maxValue ?? _maxValue;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant NumberSelector oldWidget) {
    if (oldWidget.initValue != widget.initValue) {
      _value = widget.initValue;
    }
    if (oldWidget.minValue != widget.minValue) {
      _minValue = widget.minValue ?? _minValue;
    }
    if (oldWidget.maxValue != widget.maxValue) {
      _maxValue = widget.maxValue ?? _maxValue;
    }
    super.didUpdateWidget(oldWidget);
  }

  void _onDecrementCount() {
    setState(() {
      if (_value <= _minValue) {
        _value = _minValue;
      } else {
        _value--;
      }
      widget.onChanged(_value);
    });
  }

  void _onIncrementCount() {
    setState(() {
      if (_value >= _maxValue) {
        _value = _maxValue;
      } else {
        _value++;
      }
      widget.onChanged(_value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style:
                  AppTextStyles.base.size14.w500.withColor(AppColors.gray700),
            ),
            Text(
              widget.subTitle,
              style:
                  AppTextStyles.base.size12.w400.withColor(AppColors.gray500),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
            border: Border.all(
              color: AppColors.gray200,
              width: AppDimens.borderWidth,
            ),
          ),
          child: Row(
            children: [
              AdjustmentButton(
                icon: Icons.minimize_outlined,
                disable: _value <= _minValue,
                onTap: _onDecrementCount,
              ),
              Text(
                _value.toString(),
                style:
                    AppTextStyles.base.size14.w600.withColor(AppColors.gray700),
              ),
              AdjustmentButton(
                icon: Icons.add_outlined,
                disable: _value >= _maxValue,
                onTap: _onIncrementCount,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AdjustmentButton extends StatelessWidget {
  final IconData icon;
  final Function() onTap;
  final bool disable;

  const AdjustmentButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: disable ? null : onTap,
      child: Icon(
        icon,
        size: AppDimens.iconSizeNormalSmall,
        color: disable ? AppColors.gray300 : AppColors.primary600,
      ),
    );
  }
}
