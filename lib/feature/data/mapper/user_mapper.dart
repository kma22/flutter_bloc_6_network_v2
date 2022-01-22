import 'package:flutter_bloc_6_network_v2/feature/data/models/api_user.dart';
import 'package:flutter_bloc_6_network_v2/feature/domain/models/user.dart';

class UserMapper {
  static User fromApi(ApiUser apiModel) {
    return User(
      id: apiModel.id,
      name: apiModel.name,
      emaile: apiModel.email,
      phone: apiModel.phone,
    );
  }
}
