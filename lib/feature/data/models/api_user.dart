import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_6_network_v2/feature/domain/models/user.dart';

class ApiUser {
  static const _idKey = 'id';
  static const _nameKey = 'name';
  static const _emailKey = 'email';
  static const _phoneKey = 'phone';

  final int id;
  final String name;
  final String email;
  final String phone;

  ApiUser({
    @required this.id,
    @required this.name,
    @required this.email,
    @required this.phone,
  });

  ApiUser.fromMap(Map<String, dynamic> map)
      : id = map[_idKey],
        name = map[_nameKey],
        email = map[_emailKey],
        phone = map[_phoneKey];
}
