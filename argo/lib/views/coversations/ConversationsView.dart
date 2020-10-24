import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:Argo/utils/constants.dart';
import 'package:Argo/views/coversations/components/Body.dart';
import 'package:Argo/components/AppBarArgo.dart';
import 'package:Argo/components/DiaryList.dart';
import 'package:Argo/components/ConversationsList.dart';
import 'package:Argo/components/RecordList.dart';
import 'package:Argo/components/SupportList.dart';
import 'package:Argo/components/BottomNavigationBarArgo.dart';
import 'package:Argo/components/RoundedButton.dart';

/// This is the stateful widget that the main application instantiates.
///
///
///
///
///

class ConversationsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: ConversationViewWidget(context:context),
    );
  }
}
class ConversationViewWidget extends StatefulWidget {
  final BuildContext context;
  ConversationViewWidget({
    Key key,
    this.context
  }) : super(key: key);

  @override
  _ConversationViewState createState() => _ConversationViewState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ConversationViewState extends State<ConversationViewWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const ConversationsList convList =  ConversationsList();

  static const List<Widget> _widgetOptions = <Widget>[
    Center(
        child: ConversationsList()
    ),
    Center(
       child: DiaryList()
    ),
    Center(
      child: RecordList()
    ),
    Center(
        child: SupportList()
    ),
    Center(
        child: Text('Settings')
    )
  ];

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDialog() {

  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Conversations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Agenda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Historial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Soporte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Soporte',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: GreenColorArgo,
        onTap: _onItemTapped,
        unselectedItemColor: PrimaryColorArgo,
      ),
    );
  }
}