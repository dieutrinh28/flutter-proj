import 'package:flutter_proj/models/user.dart';

abstract class AbstractUserNetwork {
  Future<List<User>> getUsers();
}
