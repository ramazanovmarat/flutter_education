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

class MedalStandings extends StatelessWidget {
  const MedalStandings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> olympics2022 = [
      'Страна', 'Золото', 'Серебро', 'Бронза', 'Итого',
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
      Widget design = Row(
        children: [
          const SizedBox(height: 30,),
          SizedBox(
            width: 80,
              child: Text(country.count,
              style: const TextStyle(fontSize: 12),
              )),
          SizedBox(
            width: 70,
              child: Text(country.zoloto,
                style: const TextStyle(fontSize: 12),
              )),
          SizedBox(
            width: 70,
              child: Text(country.serebro,
              style: const TextStyle(fontSize: 12),
              )),
          SizedBox(
            width: 70,
              child: Text(country.bronza,
              style: const TextStyle(fontSize: 12),
              )),
          SizedBox(
            width: 70,
              child: Text(country.rezult,
              style: const TextStyle(fontSize: 12),
              )),
        ],
      );
      widgetList.add(design);
      widgetList.add(const Divider(thickness: 1,),);
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Медальный зачёт')),
      body: Column(children: widgetList),
    );
  }
}
