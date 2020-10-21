import 'package:flutter/material.dart';
import 'package:argotutor/views/coversations/components/Body.dart';
import 'package:argotutor/components/AppBarArgo.dart';


class ConversationsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}