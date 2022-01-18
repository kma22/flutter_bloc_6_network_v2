import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => Container(
        child: ListTile(
          leading: Text('ID: 1'),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Name'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('@emile'),
                  Text('phone'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
