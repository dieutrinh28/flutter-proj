import 'package:flutter/material.dart';
import 'package:flutter_proj/localization/localizations.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context);

    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Search"),
        ),
      ),
    );
  }
}
