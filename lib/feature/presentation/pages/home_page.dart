import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_6_network_v2/feature/data/repository/user_data_repository.dart';
import 'package:flutter_bloc_6_network_v2/feature/data/service/rest_service.dart';
import 'package:flutter_bloc_6_network_v2/feature/presentation/bloc/user_bloc.dart';
import 'package:flutter_bloc_6_network_v2/feature/presentation/widget/action_button.dart';
import 'package:flutter_bloc_6_network_v2/feature/presentation/widget/user_list.dart';

class HomePage extends StatelessWidget {
  final userRepository = UserDataRepository(RestService());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserBloc(userRepository: userRepository),
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('flutter_bloc ^4 network'),
          centerTitle: true,
          backgroundColor: Colors.black38,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ActionButton(),
              Expanded(child: UserList()),
            ],
          ),
        ),
      ),
    );
  }
}
