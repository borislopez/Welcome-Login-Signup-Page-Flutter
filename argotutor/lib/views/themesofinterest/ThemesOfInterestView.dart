import 'package:flutter/material.dart';
import 'package:argotutor/components/AppBarArgo.dart';
import 'package:argotutor/views/themesofinterest/components/Body.dart';
class ThemesOfInterestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}