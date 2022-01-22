import 'package:flutter_bloc_6_network_v2/feature/data/mapper/user_mapper.dart';
import 'package:flutter_bloc_6_network_v2/feature/data/models/api_user.dart';
import 'package:flutter_bloc_6_network_v2/feature/data/service/rest_service.dart';
import 'package:flutter_bloc_6_network_v2/feature/domain/models/user.dart';
import 'package:flutter_bloc_6_network_v2/feature/domain/repository/user_repository.dart';

class UserDataRepository implements UserRepository {
  final RestService _restService;

  UserDataRepository(this._restService);

  @override
  Future<List<User>> getUserList() async {
    final result = await _restService.getUser();
    List<User> userList = [];
    for(var map in result){
      userList.add(UserMapper.fromApi(ApiUser.fromMap(map)));
    }
    return userList;
  }
}
