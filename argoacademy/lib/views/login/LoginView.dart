import 'package:flutter/material.dart';
import 'package:argoacademy/views/login/components/Body.dart';
import 'package:argoacademy/components/AppBarArgo.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}