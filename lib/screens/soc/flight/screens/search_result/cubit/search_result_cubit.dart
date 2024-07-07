import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_proj/constants/mock.dart';
import 'package:flutter_proj/models/flight/request_search_by_criteria.dart';
import 'package:flutter_proj/models/flight/search_by_criteria.dart';
import 'package:flutter_proj/remote/base/single_http_request_controller.dart';
import 'package:flutter_proj/repositories/flight_search_repository.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  final AbstractFlightSearchRepository repository;
  final _singleHttpRequestController = SingleHttpRequestController();

  SearchResultCubit({required this.repository}) : super(SearchResultInitial());

  void fetchSearchFlight({
    required RequestSearchByCriteria requestModel,
  }) async {
    _cancelableSearchFlight(requestModel);
  }

  void _cancelableSearchFlight(
    RequestSearchByCriteria requestModel,
  ) {
    _singleHttpRequestController.cancelableFetchData(
      onLoading: () {
        emit(SearchResultLoading());
      },
      requestApi: _doGetFlightByCriteria(requestModel),
      onSuccess: (data) {
        emit(SearchResultSuccess(response: data));
      },
      onError: (String? msg) {
        final mockData = SearchByCriteria.fromJson(searchByCriteriaData);
        emit(SearchResultSuccess(response: mockData));

        // emit(SearchFlightFailed());
      },
    );
  }

  Future<SearchByCriteria> _doGetFlightByCriteria(
      RequestSearchByCriteria requestModel) async {
    return await repository.getFlightByCriteria(
      originLocationCode: requestModel.originLocationCode,
      destinationLocationCode: requestModel.destinationLocationCode,
      departureDate: requestModel.departureDate,
      numOfAdults: requestModel.numOfAdults,
      numOfChildren: requestModel.numOfChildren,
      numOfInfants: requestModel.numOfInfants,
      currency: requestModel.currency,
      sorting: requestModel.sorting,
    );
  }
}
