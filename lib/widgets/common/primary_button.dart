import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 20),
        height: 44,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.brandPrimaryBase,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
