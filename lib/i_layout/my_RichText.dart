import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rich extends StatelessWidget {
  const Rich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, left: 50),
      color: Colors.teal,
      child: RichText(
        text: const TextSpan(
          text: 'Hello flutter ',
          style: TextStyle(fontSize: 20),
          children: <TextSpan>[
            TextSpan(text: 'from', style: TextStyle(color: Colors.red)),
            TextSpan(text: 'Metanit.com', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
