import 'package:flutter/material.dart';
import 'package:argoacademy/views/register/components/Body.dart';
import 'package:argoacademy/components/AppBarArgo.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarArgo(),
      body: Body(),
    );
  }
}