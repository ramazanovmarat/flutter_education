

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'noble_gases_model.dart';

class NobleGasRibbon extends StatelessWidget {
  const NobleGasRibbon({Key? key}) : super(key: key);

  Widget elementDesign(NobleGasItem gas){
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
          children: [
            const SizedBox(width: 15,),
            Text(gas.atomicNumber,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
            const SizedBox(width: 20,),
            Text(gas.symbol,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),),
            const SizedBox(width: 10,),
            Column(
              children: [
                Text(gas.name, style: const TextStyle(color: Colors.white),),
                Text(gas.weight, style: const TextStyle(color: Colors.white),),
              ],
            ),
          ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    List<List<String>> noble_gases = [
      ["Atomic number", "Symbol", "Name", "Standard atomic weight"],
      ['2', 'He', 'Гелий', '4.002602(2)'],
      ['10', 'Ne', 'Неон', '20.1797(6)'],
      ['18', 'Ar', 'Аргон', '39.948(1)'],
      ['36', 'Kr', 'Криптон', '83.80(1)'],
      ['54', 'Xe', 'Ксенон', '131.29(2)'],
      ['86', 'Rn', 'Радон', '(222)'],
      ['118', 'Oq', 'Оганесон', '(294)']
    ];

    List<NobleGasItem> ngList = [];
    for(int item = 1; item < noble_gases.length; item++){
      ngList.add(
        NobleGasItem(
            atomicNumber: noble_gases[item][0],
            symbol: noble_gases[item][1],
            name: noble_gases[item][2],
            weight: noble_gases[item][3]),
      );
    }

    List<Widget>ribbon = [];
    for(var item in ngList){
      ribbon.add(elementDesign(item));
      ribbon.add(const Divider(thickness: 1,));
      ribbon.add(const Center());
    }

    return Column(children: ribbon,);


  }
}

