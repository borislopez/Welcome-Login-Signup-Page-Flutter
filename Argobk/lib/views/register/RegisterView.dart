import 'package:flutter/material.dart';
import 'package:Argo/views/register/components/Body.dart';
import 'package:Argo/components/AppBarArgo.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}