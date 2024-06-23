part of 'friend_list_bloc.dart';

abstract class FriendListState extends Equatable {
  @override
  List<Object?> get props => [];
}

class FriendListInitial extends FriendListState {}

class FriendListLoading extends FriendListState {}

class FriendListSuccess extends FriendListState {
  final List<User> users;

  FriendListSuccess({required this.users});

  @override
  List<Object?> get props => [users];
}

class FriendListFailure extends FriendListState {
  final String message;

  FriendListFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
