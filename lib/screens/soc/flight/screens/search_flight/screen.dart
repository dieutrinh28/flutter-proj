import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:flutter_proj/screens/soc/flight/screens/search_flight/bloc/search_flight_bloc.dart';
import 'package:flutter_proj/screens/soc/flight/screens/search_flight/model/extra_search_flight.dart';
import 'package:flutter_proj/screens/soc/flight/screens/search_flight/widget/recent_criteria_search.dart';
import 'package:flutter_proj/screens/soc/flight/screens/search_flight/widget/search_bar.dart';
import 'package:flutter_proj/utils/debound_controller.dart';

class SearchFlightScreen extends StatefulWidget {
  const SearchFlightScreen({super.key});

  @override
  State<SearchFlightScreen> createState() => _SearchFlightScreenState();
}

class _SearchFlightScreenState extends State<SearchFlightScreen> {
  late final DebounceController<String> _searchInputDebounceController;

  @override
  void initState() {
    super.initState();
    _searchInputDebounceController =
        DebounceController(onValue: _onSearchDebounceTextChanged);
  }

  @override
  void dispose() {
    _searchInputDebounceController.dispose();
    super.dispose();
  }

  void _onSearchDebounceTextChanged(String text) {
    context.read<SearchFlightBloc>().add(SearchTextChangedEvent(text: text));
  }

  void _onBack(BuildContext context) {
    String? searchText;
    Navigator.pop(context, ExtraSearchFlightModel(searchText: searchText));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _onBack(context);
        return false;
      },
      child: GestureDetector(
        onTap: () {
          /// un focus when tap outside
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          backgroundColor: AppColors.gray100,
          appBar: SearchFlightBar(
            onBack: () {
              _onBack(context);
            },
            onTextChanged: (text) {},
          ),
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: RecentCriteriaSearch(),
                ),
                SliverToBoxAdapter(
                  child: RecentCriteriaSearch(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
