import 'package:flutter/material.dart';
import 'package:argotutor/views/register/components/Body.dart';
import 'package:argotutor/components/AppBarArgo.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}