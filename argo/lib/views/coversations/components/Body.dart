import 'package:flutter/material.dart';
import 'package:Argo/utils/constants.dart';
import 'package:Argo/components/RoundedButton.dart';
import 'package:Argo/components/ConversationsList.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

      return
          Stack(
          children:<Widget> [
            Container(
              child:
                RoundedButton(
                  text: "Iniciar Conversacion",
                  color : GreenColorArgo,
                  press: () {


                  },
                )

               ,
            ),
            ConversationsList()
          ]
    );

  }
}
