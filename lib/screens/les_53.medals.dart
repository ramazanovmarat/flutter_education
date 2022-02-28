import 'package:flutter/material.dart';

class Country{
  String count;
  String zoloto;
  String serebro;
  String bronza;
  String rezult;

  Country({
    required this.count,
    required this.zoloto,
    required this.serebro,
    required this.bronza,
    required this.rezult,
  });
}

class MedalStandingsIcon extends StatelessWidget {
  const MedalStandingsIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> olympics2022 = [
      'Страна', 'золото', 'Серебро', 'Бронза', 'Итого',
      'Норвегия', '16', '8', '13', '37',
      'Германия', '12', '10', '5', '27',
      'Китай', '9', '4', '2', '15',
      'США', '8', '10', '7', '25',
      'Швеция', '8', '5', '5', '18',
      'Нидерланды', '8', '5', '4', '17',
      'Австрия', '7', '7', '4', '18',
      'Швейцария', '7', '2', '5', '14',
      'OKP', '6', '12', '14', '32',
    ];

    List<Country> countryList = [];
    for(int i = 0; i < olympics2022.length; i += 5){
      Country object = Country(
          count: olympics2022[i],
          zoloto: olympics2022[i+1],
          serebro: olympics2022[i+2],
          bronza: olympics2022[i+3],
          rezult: olympics2022[i+4]);
      countryList.add(object);
    }

    List<Widget> widgetList = [];
    for(var country in countryList){
      Widget design = (country.count == 'Страна') ?
      Row(
        children: [
          SizedBox(width: 115, child: Text(country.count, style: TextStyle(fontWeight: FontWeight.bold),)),
          Container(alignment: Alignment.centerLeft, width: 50, child: Icon(Icons.looks_one, color: Colors.orange)),
          Container(alignment: Alignment.centerLeft, width: 50, child: Icon(Icons.looks_two, color: Colors.grey)),
          Container(alignment: Alignment.centerLeft, width: 50, child: Icon(Icons.looks_3, color: Colors.brown)),
          Container(alignment: Alignment.centerLeft, width: 50, child: Icon(Icons.functions, color: Colors.green)),
        ],

      )
          :
      Row(
        children: [
          SizedBox(width: 120, child: Text(country.count)),
          SizedBox(width: 50, child: Text(country.zoloto)),
          SizedBox(width: 50, child: Text(country.serebro)),
          SizedBox(width: 50, child: Text(country.bronza)),
          Text(country.rezult),
        ],
      );

      widgetList.add(Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: design,
      ));
      widgetList.add(const Divider(thickness: 1,),);
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Медальный зачёт')),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(children: widgetList),
      ),
    );
  }
}
