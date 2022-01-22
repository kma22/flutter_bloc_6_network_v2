import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_6_network_v2/feature/presentation/bloc/user_bloc.dart';
import 'package:flutter_bloc_6_network_v2/feature/presentation/bloc/user_event.dart';

class ActionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('load');
                userBloc.add(UserLoadEvent());
              },
              child: Text('Load'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                print('clear');
                userBloc.add(UserClearEvent());
              },
              child: Text('Clear'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: TextField(
            textAlign: TextAlign.center,
            onChanged: (text) {
              userBloc.add(UserSearchEvent(text: text));
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.search_rounded),
              hintText: "Search",
              helperText: "To search, enter id, name, phone or email.",
            ),
          ),
        ),
      ],
    );
  }
}
