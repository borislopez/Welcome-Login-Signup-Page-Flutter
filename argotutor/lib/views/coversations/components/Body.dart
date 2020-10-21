import 'package:flutter/material.dart';
import 'package:argotutor/utils/constants.dart';
import 'package:argotutor/components/RoundedButton.dart';
import 'package:argotutor/views/login/LoginView.dart';
import 'package:argotutor/views/register/RegisterView.dart';
import 'package:argotutor/views/home/components/BackgroundImage.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget> [
        Container(
          height : double.infinity,
          child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical : 0.0
              ),
              child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundedButton(
                      text: "Iniciar Conversacion",
                      color : GreenColorArgo,
                      press: () {
                        // otherwise.

                      },
                    )
                  ]
              )
          ),
        )
      ],

    );

  }
}
