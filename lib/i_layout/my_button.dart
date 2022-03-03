import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  IconData icon = Icons.eighteen_mp;

  void printFirst() {
    setState(() {
      icon = Icons.face;
    });
  }

  void longPrint(){
    setState(() {
      icon = Icons.arrow_forward;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.tealAccent),
                foregroundColor: MaterialStateProperty.all(Colors.red),
                  elevation: MaterialStateProperty.all(20),
                  overlayColor: MaterialStateProperty.all(Colors.green),
                  shadowColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: const BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                onLongPress: longPrint,
                 onPressed: printFirst,
                  child: const Text('Нажми')),
            ],
          ),
        ),
      ),
    );
  }
}
