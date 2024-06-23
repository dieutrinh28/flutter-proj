import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_proj/models/user.dart';
import 'package:flutter_proj/repositories/user_repository.dart';

part 'friend_list_event.dart';

part 'friend_list_state.dart';

class FriendListBloc extends Bloc<FriendListEvent, FriendListState> {
  final AbstractUserRepository userRepository;

  FriendListBloc({required this.userRepository}) : super(FriendListInitial()) {
    on<GetFriendListEvent>((event, emit) async {
      emit(FriendListLoading());

      try {
        // final users = await repoPlaceHolder.getUsers();

        emit(FriendListSuccess(users: [
          User(id: 1, name: "Naibee"),
          User(id: 2, name: "Ching"),
        ]));

        // emit(FriendListSuccess(users: users));
      } catch (e) {
        emit(FriendListFailure(message: e.toString()));
      }
    });
  }
}
