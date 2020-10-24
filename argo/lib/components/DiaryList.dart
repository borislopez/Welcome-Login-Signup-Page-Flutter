
import 'package:flutter/material.dart';
import 'package:Argo/utils/constants.dart';

class DiaryList extends StatelessWidget {



  const DiaryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titles = ['Manuel Elias duarte', 'Marco Vinicio Perez', 'Mario Smith'];
    final subtitles = ['Matematica, Tecnologia, Moda', 'Matematica, Tecnologia, Moda', 'Matematica, Tecnologia, Moda'];
    final hours = ['7:00 am - 8:00 am', '10:00 am - 11:00 am', '5:00 pm - 6:00 pm'];

    return ListView.builder(
      itemCount: titles.length,

      itemBuilder: (context, index) {
        return  Container( //
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: PrimaryLightColorArgo)),
          ) ,
          child: ListTile(

            title: Text(titles[index]),
            subtitle: Text(subtitles[index]),

          ),
        );
      },
    );




      ListView(
      padding: const EdgeInsets.all(80),

      children: <Widget>[
        Container(
          height: 50,
          //color: Colors.amber[600],
          child:  Text('Elias '),
        ),
        Container(
          height: 50,
          //color: Colors.amber[500],
          child: const  Text('Entry B'),
        ),
        Container(
          height: 50,
          //color: Colors.amber[100],
          child:  Text('Entry C'),
        ),
      ],
    );
  }

}