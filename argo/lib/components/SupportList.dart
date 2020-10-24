
import 'package:flutter/material.dart';
import 'package:Argo/utils/constants.dart';


class SupportList extends StatelessWidget {

  const SupportList({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final titles = ['Ticket # 123459', 'Ticket # 123460', 'Ticket # 123490'];
    final subtitles = ['Problema de cuentas', 'Problema de cuentas', 'Problema de cuentas'];

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Container( //
            decoration: BoxDecoration( //

              border: Border(bottom: BorderSide(color: YellowColorArgo)),
            ) ,
          child: ListTile(
            //leading: Icon(icons[index]),
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