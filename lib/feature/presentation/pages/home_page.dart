import 'package:flutter/material.dart';
import 'package:flutter_bloc_6_network_v2/feature/presentation/widget/action_button.dart';
import 'package:flutter_bloc_6_network_v2/feature/presentation/widget/user_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
