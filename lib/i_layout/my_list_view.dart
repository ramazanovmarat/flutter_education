import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
        Container(
          height: 500,
          color: Colors.black,
        ),
        Container(
          height: 500,
          color: Colors.red,
        ),
        Ex(),
      ],
    );
  }
}

class Ex extends StatelessWidget {
  const Ex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      color: Colors.blue,
    );
  }
}

