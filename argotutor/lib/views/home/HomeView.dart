import 'package:flutter/material.dart';
import 'package:argotutor/views/home/components/Body.dart';
import 'package:argotutor/components/AppBarArgo.dart';
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}