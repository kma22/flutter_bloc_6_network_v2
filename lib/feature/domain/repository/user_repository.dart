
import 'package:flutter_bloc_6_network_v2/feature/domain/models/user.dart';

abstract class UserRepository {
  Future<List<User>> getUserList();
}