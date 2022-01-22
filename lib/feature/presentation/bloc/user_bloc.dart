import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_6_network_v2/feature/data/repository/user_data_repository.dart';
import 'package:flutter_bloc_6_network_v2/feature/domain/models/user.dart';
import 'package:flutter_bloc_6_network_v2/feature/presentation/bloc/user_event.dart';
import 'package:flutter_bloc_6_network_v2/feature/presentation/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  List<User> _loadedUserList = [];

  final UserDataRepository userRepository;

  UserBloc({@required this.userRepository}) : super(UserEmptyState()) {
    add(UserLoadEvent());
  }

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is UserLoadEvent) {
      yield UserLoadingState();
      try {
        _loadedUserList = await userRepository.getUserList();
        yield UserLoadedState(loadedUser: _loadedUserList);
      } catch (e) {
        print(e);
        yield UserErrorState();
      }
    } else if (event is UserClearEvent) {
      _loadedUserList = [];
      yield UserEmptyState();
    } else if (event is UserSearchEvent) {
      List<User> result = [];
      for (var user in _loadedUserList) {
        if (('id:' + user.id.toString()).contains(event.text) ||
            user.name.toLowerCase().contains(event.text.toLowerCase()) ||
            user.phone.toLowerCase().contains(event.text.toLowerCase()) ||
            user.emaile.toLowerCase().contains(event.text.toLowerCase())) {
          result.add(user);
        }
      }
      yield UserLoadedState(loadedUser: result);
    }
  }
}
