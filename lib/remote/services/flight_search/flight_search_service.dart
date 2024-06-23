import 'package:dio/dio.dart';
import 'package:flutter_proj/constants/endpoints.dart';
import 'package:flutter_proj/models/flight/search_by_criteria.dart';
import 'package:flutter_proj/remote/base/result.dart';
import 'package:flutter_proj/remote/services/flight_search/flight_search_network.dart';
import 'package:retrofit/http.dart';

part 'flight_search_service.g.dart';

@RestApi(baseUrl: BookingFlightSearchEndPoints.base)
abstract class FlightSearchService extends AbstractFlightSearchNetwork {
  factory FlightSearchService(Dio dio, {String baseUrl}) = _FlightSearchService;

  @override
  @POST(BookingFlightSearchEndPoints.getFlightByCriteria)
  Future<Result<SearchByCriteria>> getFlightByCriteria(
    @Query('page_num') int? pageNum,
    @Query('page_size') int? pageSize,
    @Query('origin_location_code') String originLocationCode,
    @Query('destination_location_code') String destinationLocationCode,
    @Query('departure_date') String departureDate,
    @Query('return_date') String? returnDate,
    @Query('num_of_adults') int numOfAdults,
    @Query('num_of_children') int numOfChildren,
    @Query('num_of_infants') int numOfInfants,
    @Query('currency') String currency,
    @Query('included_airline_codes') List<String>? includedAirlineCodes,
    @Query('travel_classes') List<String>? travelClasses,
    @Query('flight_stops') List<String>? flightStops,
    @Query('min_price') double? minPrice,
    @Query('max_price') double? maxPrice,
    @Query('departure_times') List<int>? departureTimes,
    @Query('arrival_times') List<int>? arrivalTimes,
    @Query('sorting') String sorting,
  );
}
