
import 'package:flutter/material.dart';

class Tg extends StatelessWidget {
  const Tg({Key? key}) : super(key: key);

  Widget vScreen ({required IconData icon, required Color color, required String text}){
    return Row(
      children: [
        Icon(icon, color: color, size: 60,),
        const SizedBox(width: 10,),
        Text(text, style: const TextStyle(fontSize: 25),),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios, color: Colors.black,),
      ],
    );
  }

  Widget menuScreen({required IconData icon, required String text, required Color color}){
    return Row(
      children: [
        Icon(icon, color: color, size: 60,),
        const SizedBox(width: 10,),
        Text(text, style: const TextStyle(fontSize: 25),),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios, color: Colors.black,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screenRow =[
      vScreen(icon: Icons.bookmark, color: Colors.blue, text: 'Избранное'),
      const Divider(thickness: 1,),
      vScreen(icon: Icons.call, color: Colors.green, text: 'Недавние звонки'),
      const Divider(thickness: 1,),
      vScreen(icon: Icons.devices, color: Colors.yellow, text: 'Устройства'),
      const Divider(thickness: 1,),
      vScreen(icon: Icons.folder, color: Colors.red, text: 'Папка с чатами'),
    ];

    List<Widget> menuRow = [
      menuScreen(icon: Icons.notifications, color: Colors.blue, text: 'Уведомления'),
      const Divider(thickness: 1,),
      menuScreen(icon: Icons.privacy_tip, color: Colors.green, text: 'Конфедициальность'),
      const Divider(thickness: 1,),
      menuScreen(icon: Icons.date_range, color: Colors.yellow, text: 'Данные и память'),
      const Divider(thickness: 1,),
      menuScreen(icon: Icons.language, color: Colors.red, text: 'Язык'),
      const Divider(thickness: 1,),
      menuScreen(icon: Icons.face_retouching_natural, color: Colors.blue, text: 'Стикеры'),
    ];

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Настройки'),
        centerTitle: true,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      ClipOval(
                          child: Image.network(
                            'https://nbnews.com.ua/wp-content/uploads/2020/06/maxresdefault-7.jpg',
                            width: 200,
                          ),),
                      const SizedBox(height: 30,),
                      const Text('Marat Ramazanov', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      const Text('89886416589', style: TextStyle(color: Colors.grey, fontSize: 15),),
                      const SizedBox(height: 10,),
                      const Text('@mr_19', style: TextStyle(color: Colors.grey),),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
                  const Positioned(
                    top: 20,
                      right: 20,
                      child: Text('Изменить', style: TextStyle(color: Colors.blue),)),
               ],
              ),
              const SizedBox(height: 15,),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(children: screenRow),
              ),
              const SizedBox(height: 15,),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(children: menuRow,),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
