import 'package:flutter/material.dart';
import 'package:Argo/views/coversations/components/Body.dart';
import 'package:Argo/components/AppBarArgo.dart';
import 'package:Argo/components/BottomNavigationBarArgo.dart';

class AgendaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
      bottomNavigationBar: BottomNavigationBarArgo(context: context, selectedIndex: 0),
    );
  }
}