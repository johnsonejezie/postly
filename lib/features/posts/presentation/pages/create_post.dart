import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: const [
          Text('create'),
        ]),
      ),
    );
  }
}
