import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';

class RadioButtonCustom<T> extends StatelessWidget {
  final double iconSize;
  final Color color;
  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;

  const RadioButtonCustom({
    super.key,
    required this.iconSize,
    required this.color,
    required this.value,
    this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Row(
        children: [
          _buildRadio(),
        ],
      ),
    );
  }

  Widget _buildRadio() {
    final bool isSelected = value == groupValue;
    const ratio = 2.5;
    return Container(
      width: iconSize,
      height: iconSize,
      decoration: BoxDecoration(
        color: isSelected ? color.withOpacity(0.1) : AppColors.baseWhite,
        borderRadius: BorderRadius.circular(iconSize / 2),
        border: Border.all(
          color: isSelected ? color : AppColors.gray300,
          width: 1,
        ),
      ),
      child: Center(
        child: Container(
          width: iconSize / ratio,
          height: iconSize / ratio,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(iconSize / 2),
          ),
        ),
      ),
    );
  }
}
