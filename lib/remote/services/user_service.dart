import 'package:dio/dio.dart';
import 'package:flutter_proj/constants/endpoints.dart';
import 'package:flutter_proj/models/user.dart';
import 'package:flutter_proj/remote/services/user_network.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'user_service.g.dart';

@RestApi(baseUrl: PlaceHolderEndPoints.base)
abstract class UserService extends AbstractUserNetwork {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @override
  @GET(PlaceHolderEndPoints.users)
  Future<List<User>> getUsers();
}
