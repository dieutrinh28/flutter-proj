import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/constants/dimens.dart';
import 'package:flutter_proj/screens/soc/flight/screens/home/model/main_search_model.dart';
import 'package:flutter_proj/screens/soc/flight/screens/home/widget/choose_date.dart';
import 'package:flutter_proj/screens/soc/flight/screens/home/widget/choose_destination.dart';
import 'package:flutter_proj/screens/soc/flight/screens/home/widget/choose_person.dart';

class MainSearchSection extends StatefulWidget {
  const MainSearchSection({super.key});

  @override
  State<MainSearchSection> createState() => _MainSearchSectionState();
}

class _MainSearchSectionState extends State<MainSearchSection> {
  MainSearchModel model = MainSearchModel.init();

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(AppDimens.appPaddingNormal),
      margin: const EdgeInsets.all(AppDimens.appMarginNormal),
      decoration: BoxDecoration(
        color: AppColors.baseWhite,
        borderRadius: BorderRadius.circular(AppDimens.borderRadiusNormal),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChooseDestination(
            onSwitchTap: () {
              setState(() {
                String temp = model.from;
                model = model.copyWith(from: model.to);
                model = model.copyWith(to: temp);
              });
            },
            onChooseFromTap: () {
              setState(() {
                model = model.copyWith(from: "DEL");
              });
            },
            onChooseToTap: () {
              setState(() {
                model = model.copyWith(to: "BOM");
              });
            },
            from: model.from,
            to: model.to,
          ),
          const ChooseDate(),
          ChoosePerson(
            adult: model.adult,
            child: model.child,
            infant: model.infant,
            callBackAdult: (adult) {
              setState(() {
                model = model.copyWith(adult: adult);
              });
            },
            callBackChild: (child) {
              setState(() {
                model = model.copyWith(child: child);
              });
            },
            callBackInfant: (infant) {
              setState(() {
                model = model.copyWith(infant: infant);
              });
            },
          ),
        ],
      ),
    );
  }
}
