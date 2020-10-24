
import 'package:flutter/material.dart';
import 'package:Argo/utils/constants.dart';

class AgendaList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ListView(
      padding: const EdgeInsets.only( top: 90.0),
      children: <Widget>[
        ListTile(
         // leading: Icon(Icons.wb_sunny),
          title: Text('Agenda '),
        ),
        ListTile(
         // leading: Icon(Icons.brightness_3),
          title: Text('Agenda '),
        ),
        ListTile(
         // leading: Icon(Icons.star),
          title: Text('Agenda'),
        ),
      ],
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