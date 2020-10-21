import 'package:flutter/material.dart';
import 'package:argoacademy/components/AppBarArgo.dart';
import 'package:argoacademy/views/themesofinterest/components/Body.dart';
class ThemesOfInterestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}