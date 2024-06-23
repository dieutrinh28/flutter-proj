import 'package:flutter_proj/models/flight/search_by_criteria.dart';
import 'package:flutter_proj/remote/base/base_api_controller.dart';
import 'package:flutter_proj/remote/services/flight_search/flight_search_network.dart';
import 'package:flutter_proj/remote/services/flight_search/flight_search_service.dart';

abstract class AbstractFlightSearchRepository extends BaseApiController {
  Future<SearchByCriteria> getFlightByCriteria({
    int? pageNum,
    int? pageSize,
    required String originLocationCode,
    required String destinationLocationCode,
    required String departureDate,
    String? returnDate,
    required int numOfAdults,
    required int numOfChildren,
    required int numOfInfants,
    required String currency,
    List<String>? includedAirlineCodes,
    List<String>? travelClasses,
    List<String>? flightStops,
    double? minPrice,
    double? maxPrice,
    List<int>? departureTimes,
    List<int>? arrivalTimes,
    required String sorting,
  });
}

class FlightSearchRepository extends AbstractFlightSearchRepository {
  final AbstractFlightSearchNetwork _flightSearchService;

  FlightSearchRepository({required FlightSearchService flightSearchService})
      : _flightSearchService = flightSearchService;

  @override
  Future<SearchByCriteria> getFlightByCriteria({
    int? pageNum,
    int? pageSize,
    required String originLocationCode,
    required String destinationLocationCode,
    required String departureDate,
    String? returnDate,
    required int numOfAdults,
    required int numOfChildren,
    required int numOfInfants,
    required String currency,
    List<String>? includedAirlineCodes,
    List<String>? travelClasses,
    List<String>? flightStops,
    double? minPrice,
    double? maxPrice,
    List<int>? departureTimes,
    List<int>? arrivalTimes,
    required String sorting,
  }) {
    return handleResponseFuture(
      _flightSearchService.getFlightByCriteria(
        pageNum,
        pageSize,
        originLocationCode,
        destinationLocationCode,
        departureDate,
        returnDate,
        numOfAdults,
        numOfChildren,
        numOfInfants,
        currency,
        includedAirlineCodes,
        travelClasses,
        flightStops,
        minPrice,
        maxPrice,
        departureTimes,
        arrivalTimes,
        sorting,
      ),
    );
  }
}
