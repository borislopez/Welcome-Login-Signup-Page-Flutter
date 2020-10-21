import 'package:flutter/material.dart';
import 'package:argoacademy/views/home/components/Body.dart';
import 'package:argoacademy/components/AppBarArgo.dart';
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}