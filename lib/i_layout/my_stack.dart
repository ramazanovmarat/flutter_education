import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.white,
      padding: const EdgeInsets.only(top:40, bottom: 10, left: 20, right: 20),
       child: Stack(
         alignment: Alignment.center,
        
        children: [
        Container(
        width: 140,
         height: 140,
         color: Colors.blueGrey,
    ),
         Container(
         width: 120,
         height: 120,
         color: Colors.cyan,
    ),
         Container(
         width: 100,
         height: 100,
         color: Colors.blue,
        ),
          const Text('flutter')
       ],
      ),
     );
   }
 }

