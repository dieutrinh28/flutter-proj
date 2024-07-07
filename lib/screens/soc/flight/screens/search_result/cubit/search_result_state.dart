part of 'search_result_cubit.dart';

abstract class SearchResultState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SearchResultInitial extends SearchResultState {}

class SearchResultLoading extends SearchResultState {}

class SearchResultSuccess extends SearchResultState {
  final SearchByCriteria? response;

  SearchResultSuccess({this.response});

  @override
  List<Object?> get props => [response];
}

class SearchResultFailed extends SearchResultState {}
