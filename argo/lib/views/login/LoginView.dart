import 'package:flutter/material.dart';
import 'package:Argo/views/login/components/Body.dart';
import 'package:Argo/components/AppBarArgo.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}