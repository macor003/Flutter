import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          CircleAvatar(
            child: Text("MO"),
            backgroundColor: Colors.brown,
          )
        ],
      ),
    );
  }
}