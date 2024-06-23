import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_proj/localization/localizations.dart';
import 'package:flutter_proj/screens/social/friend_list/bloc/friend_list_bloc.dart';
import 'package:flutter_proj/widgets/common/app_bar.dart';

class FriendListScreen extends StatelessWidget {
  const FriendListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: CommonAppbar(
        title: appLocalizations.friendList,
      ),
      body: SafeArea(
        child: BlocBuilder<FriendListBloc, FriendListState>(
          builder: (context, state) {
            if (state is FriendListLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is FriendListSuccess) {
              final users = state.users;
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Text(users[index].name ?? ""),
                  );
                },
              );
            } else if (state is FriendListFailure) {
              return Center(child: Text(state.message));
            } else {
              return const Center(
                child: Text("Something wrong"),
              );
            }
          },
        ),
      ),
    );
  }
}
