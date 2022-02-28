import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: ListView.separated(
        itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
        return Ex(
            text: '$index',
        );
      },
        separatorBuilder: (BuildContext context, int index){
          return Container(
          height: 3,
          color: Colors.black,
          );
    },
      ),
    );
  }
}

       //ListView(
//       children: [
//         Text('1'),
//         Text('1'),
//         Text('1'),
//         Text('1'),
//         Text('1'),
//         Text('1'),
//         Text('1'),
//         Text('1'),
//         Text('1'),
//         Container(
//           height: 500,
//           color: Colors.black,
//         ),
//         Container(
//           height: 500,
//           color: Colors.red,
//         ),
//         Ex(),
//       ],
//     );
//   }
// }
//
class Ex extends StatefulWidget {
  final String text;
  const Ex({Key? key, required this.text}) : super(key: key);

  @override
  State<Ex> createState() => _ExState();
}

class _ExState extends State<Ex> with AutomaticKeepAliveClientMixin{
 late final TextEditingController controller;

 @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(controller: controller,);
  }

  @override
  bool get wantKeepAlive => true;
}
