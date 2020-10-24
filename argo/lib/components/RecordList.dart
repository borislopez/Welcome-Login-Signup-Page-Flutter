
import 'package:flutter/material.dart';
import 'package:Argo/utils/constants.dart';


class RecordList extends StatelessWidget {

  const RecordList({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final titles = [
      'Manuel Elias duarte',
      'Marco Vinicio Perez',
      'Mario Smith',
      'Manuel Elias duarte',
      'Marco Vinicio Perez',
      'Mario Smith',
      'Manuel Elias duarte',
      'Marco Vinicio Perez',
      'Mario Smith',
      'Manuel Elias duarte',
      'Marco Vinicio Perez',
      'Mario Smith'
    ];
    final subtitles = [
      'Matematica, Tecnologia, Moda',
      'Matematica, Tecnologia, Moda',
      'Matematica, Tecnologia, Moda',
      'Matematica, Tecnologia, Moda',
      'Matematica, Tecnologia, Moda',
      'Matematica, Tecnologia, Moda',
      'Matematica, Tecnologia, Moda',
      'Matematica, Tecnologia, Moda',
      'Matematica, Tecnologia, Moda',
      'Matematica, Tecnologia, Moda',
      'Matematica, Tecnologia, Moda',
      'Matematica, Tecnologia, Moda'
    ];
    final images = [
      'assets/images/fondo.png',
      'assets/images/fondo.png',
      'assets/images/fondo.png',
      'assets/images/fondo.png',
      'assets/images/fondo.png',
      'assets/images/fondo.png',
      'assets/images/fondo.png',
      'assets/images/fondo.png',
      'assets/images/fondo.png',
      'assets/images/fondo.png',
      'assets/images/fondo.png',
      'assets/images/fondo.png'
    ];

    final hours = ['7:00 am - 8:00 am', '10:00 am - 11:00 am', '5:00 pm - 6:00 pm', '7:00 am - 8:00 am', '10:00 am - 11:00 am', '5:00 pm - 6:00 pm', '7:00 am - 8:00 am', '10:00 am - 11:00 am', '5:00 pm - 6:00 pm', '7:00 am - 8:00 am', '10:00 am - 11:00 am', '5:00 pm - 6:00 pm'];


    return ListView.builder(
      itemCount: titles.length,

      itemBuilder: (context, index) {
        return Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: PrimaryLightColorArgo)),
            ) ,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index]),
            ),
            title: Text(titles[index]),
            subtitle: Text(hours[index]),
          ),
        );
      },
    );
  }
}