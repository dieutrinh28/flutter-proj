import 'package:flutter_proj/models/flight/search_by_criteria.dart';
import 'package:flutter_proj/remote/base/result.dart';

abstract class AbstractFlightSearchNetwork {
  Future<Result<SearchByCriteria>> getFlightByCriteria(
    int? pageNum,
    int? pageSize,
    String originLocationCode,
    String destinationLocationCode,
    String departureDate,
    String? returnDate,
    int numOfAdults,
    int numOfChildren,
    int numOfInfants,
    String currency,
    List<String>? includedAirlineCodes,
    List<String>? travelClasses,
    List<String>? flightStops,
    double? minPrice,
    double? maxPrice,
    List<int>? departureTimes,
    List<int>? arrivalTimes,
    String sorting,
  );
}
