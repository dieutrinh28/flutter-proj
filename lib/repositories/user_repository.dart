import 'package:flutter_proj/models/user.dart';
import 'package:flutter_proj/remote/services/user_network.dart';

abstract class AbstractUserRepository {
  Future<List<User>> getUsers();
}

class UserRepository extends AbstractUserRepository {
  final AbstractUserNetwork _userNetwork;

  UserRepository(AbstractUserNetwork network) : _userNetwork = network;

  @override
  Future<List<User>> getUsers() async {
    try {
      return await _userNetwork.getUsers();
    } catch (e) {
      return [];
    }
  }
}
