import 'package:flutter/material.dart';
import 'package:Argo/views/home/components/Body.dart';
import 'package:Argo/components/AppBarArgo.dart';
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}