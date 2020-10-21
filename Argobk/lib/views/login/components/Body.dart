import 'package:flutter/material.dart';
import 'package:Argo/views/home/HomeView.dart';
import 'package:Argo/components/RoundedButton.dart';
import 'package:Argo/components/RoundedTextField.dart';
import 'package:Argo/components/RoundedPasswordField.dart';



class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   // Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Stack(
        children: <Widget> [
          Container(
            alignment:Alignment.center,
            height : double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical : 10.0
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RoundedTextField(
                        hintText: "Correo electronico",
                        onChanged: (value) {},
                         errorText: "El lugar de nacimiento es requrido"
                      ),
                      RoundedPasswordField(
                        onChanged: (value) {},
                      ),
                      RoundedButton(
                          text: "Ingresar",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomeView();
                                },
                              ),
                            );
                          },
                        )
                    ],
                  )
                ]
              )
            ),
          )
        ],

      );
                
  }
}