import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_6_network_v2/feature/presentation/bloc/user_bloc.dart';
import 'package:flutter_bloc_6_network_v2/feature/presentation/bloc/user_state.dart';

class UserList extends StatelessWidget {
  const UserList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserEmptyState) {
          return const Center(
            child: Text('No data receive.'),
          );
        }
        if (state is UserLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is UserErrorState) {
          return const Center(
            child: Text('Error loading users'),
          );
        }
        if (state is UserLoadedState) {
          if (state.loadedUser.isEmpty) {
            return const Center(
              child: Text('The data is not loaded. Press button "Load".'),
            );
          } else {
            return ListView.builder(
              itemCount: state.loadedUser.length,
              itemBuilder: (context, index) => Container(
                color: index % 2 == 0 ? Colors.grey : Colors.black12,
                child: ListTile(
                  leading: Text('ID: ${state.loadedUser[index].id}'),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(state.loadedUser[index].name),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Email: ${state.loadedUser[index].emaile}'),
                          Text('Phone: ${state.loadedUser[index].phone}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        }
        return null;
      },
    );
  }
}
