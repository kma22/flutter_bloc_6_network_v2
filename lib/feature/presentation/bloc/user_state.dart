import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_6_network_v2/feature/domain/models/user.dart';

abstract class UserState {}

class UserEmptyState extends UserState {}

class UserLoadingState extends UserState {}

class UserLoadedState extends UserState {
  List<User> loadedUser;

  UserLoadedState({@required this.loadedUser}) : assert(loadedUser != null);
}

class UserErrorState extends UserState {}

