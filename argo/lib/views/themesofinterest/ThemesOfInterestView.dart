import 'package:flutter/material.dart';
import 'package:Argo/components/AppBarArgo.dart';
import 'package:Argo/views/themesofinterest/components/Body.dart';
class ThemesOfInterestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}