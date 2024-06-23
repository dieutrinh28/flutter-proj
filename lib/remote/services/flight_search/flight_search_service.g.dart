// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_search_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _FlightSearchService implements FlightSearchService {
  _FlightSearchService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= '/booking-flight-search';
  }

  final Dio _dio;

  String? baseUrl;

  @override
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
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page_num': pageNum,
      r'page_size': pageSize,
      r'origin_location_code': originLocationCode,
      r'destination_location_code': destinationLocationCode,
      r'departure_date': departureDate,
      r'return_date': returnDate,
      r'num_of_adults': numOfAdults,
      r'num_of_children': numOfChildren,
      r'num_of_infants': numOfInfants,
      r'currency': currency,
      r'included_airline_codes': includedAirlineCodes,
      r'travel_classes': travelClasses,
      r'flight_stops': flightStops,
      r'min_price': minPrice,
      r'max_price': maxPrice,
      r'departure_times': departureTimes,
      r'arrival_times': arrivalTimes,
      r'sorting': sorting,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Result<SearchByCriteria>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/search-by-criteria',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = Result<SearchByCriteria>.fromJson(
      _result.data!,
      (json) => SearchByCriteria.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
