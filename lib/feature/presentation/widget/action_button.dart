import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Load'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
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
            onChanged: (text) {},
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
