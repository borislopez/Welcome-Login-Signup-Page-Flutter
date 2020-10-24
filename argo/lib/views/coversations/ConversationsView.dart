import 'package:flutter/material.dart';
import 'package:Argo/views/coversations/components/Body.dart';
import 'package:Argo/components/AppBarArgo.dart';
import 'package:Argo/components/AgendaList.dart';
import 'package:Argo/components/ConversationsList.dart';
import 'package:Argo/components/BottomNavigationBarArgo.dart';
/// This is the stateful widget that the main application instantiates.
///
///
///
///
///

class ConversationsView extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: ConversationViewWidget(),
    );
  }
}
class ConversationViewWidget extends StatefulWidget {
  ConversationViewWidget({Key key}) : super(key: key);

  @override
  _ConversationViewState createState() => _ConversationViewState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ConversationViewState extends State<ConversationViewWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      ' Conversations',
      style: optionStyle,
    ),
    Text(
      'Agenda',
      style: optionStyle,
    ),
    Text(
      'Historial',
      style: optionStyle,
    ),
    Text(
      'Soporte',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
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
            icon: Icon(Icons.school),
            label: 'Historial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Soporte',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}