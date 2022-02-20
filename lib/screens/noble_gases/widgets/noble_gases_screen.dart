import 'package:flutter/material.dart';

import 'noble_gases_ribbon.dart';

class NobleGasesScreen extends StatelessWidget {
  const NobleGasesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Благородные газы'),

      ),
      body: const NobleGasRibbon(),
    );
  }
}
