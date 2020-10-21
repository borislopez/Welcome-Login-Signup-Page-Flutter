import 'package:flutter/material.dart';
import 'package:argoacademy/views/coversations/components/Body.dart';
import 'package:argoacademy/components/AppBarArgo.dart';


class ConversationsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}