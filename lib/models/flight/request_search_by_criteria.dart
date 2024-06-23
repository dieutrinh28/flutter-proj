import 'package:equatable/equatable.dart';

class RequestSearchByCriteria extends Equatable {
  final int? pageNum;
  final int? pageSize;
  final String originLocationCode;
  final String destinationLocationCode;
  final String departureDate;
  final String? returnDate;
  final int numOfAdults;
  final int numOfChildren;
  final int numOfInfants;
  final String currency;
  final List<String>? includedAirlineCodes;
  final List<String>? travelClasses;
  final List<String>? flightStops;
  final double? minPrice;
  final double? maxPrice;
  final List<int>? departureTimes;
  final List<int>? arrivalTimes;
  final String sorting;

  const RequestSearchByCriteria({
    this.pageNum,
    this.pageSize,
    required this.originLocationCode,
    required this.destinationLocationCode,
    required this.departureDate,
    this.returnDate,
    required this.numOfAdults,
    required this.numOfChildren,
    required this.numOfInfants,
    required this.currency,
    this.includedAirlineCodes,
    this.travelClasses,
    this.flightStops,
    this.minPrice,
    this.maxPrice,
    this.departureTimes,
    this.arrivalTimes,
    required this.sorting,
  });

  @override
  List<Object?> get props => [
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
      ];
}
