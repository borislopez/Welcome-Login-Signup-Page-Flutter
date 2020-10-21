import 'package:flutter/material.dart';
import 'package:argotutor/views/login/components/Body.dart';
import 'package:argotutor/components/AppBarArgo.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}