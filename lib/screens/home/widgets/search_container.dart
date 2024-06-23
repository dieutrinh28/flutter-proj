import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grayscaleBackground,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search any property / project',
        ),
      ),
    );
  }
}
