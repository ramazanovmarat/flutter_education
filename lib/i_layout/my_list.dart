import 'package:flutter/material.dart';


class TwoString{
  final String text;
  final String text2;

  TwoString({
   required this.text,
   required this.text2,
});
}

class Example extends StatelessWidget {
   List<TwoString> textData = [
    TwoString(text: '1', text2: 'a'),
    TwoString(text: '2', text2: 'B'),
    TwoString(text: '3', text2: 'g'),
  ];

  Example({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final List<Widget> testFields =
    textData.map((TwoString twoString) => TextWrapper(text: twoString.text, text2: twoString.text)).toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: testFields,
    );
  }
}

class TextWrapper extends StatelessWidget {
  final String text;
  final String text2;
  const TextWrapper({Key? key, required this.text, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
            text
        ),
        const Spacer(),
        Text(
            text2
        ),
      ],
    );
  }
}

