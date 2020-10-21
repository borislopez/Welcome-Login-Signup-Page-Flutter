import 'package:flutter/material.dart';
import 'package:Argo/views/coversations/components/Body.dart';
import 'package:Argo/components/AppBarArgo.dart';


class ConversationsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}