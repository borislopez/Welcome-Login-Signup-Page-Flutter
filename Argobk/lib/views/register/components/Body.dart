import 'package:flutter/material.dart';
import 'package:Argo/components/RoundedButton.dart';
import 'package:Argo/components/RoundedTextField.dart';



class Body extends StatelessWidget {

  GlobalKey<FormState> keyForm = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                      Form(
                      key: keyForm,
                      child: Stack(
                        children:<Widget>[
                      RoundedTextField(
                        hintText: "Nombre",
                        onChanged: (value) {},
                        errorText: "El nombre es requrido"
                      ),
                      RoundedTextField(
                        hintText: "Email",
                        onChanged: (value) {},
                        errorText: "El email es requrido"
                      ),
                      RoundedTextField(
                        hintText: "Celular",
                        onChanged: (value) {},
                        errorText: "El celular es requrido"
                      ),
                      RoundedTextField(
                        hintText: "Lugar de nacimiento",
                        onChanged: (value) {},
                        errorText: "El lugar de nacimiento es requrido"
                      ),
                      
                      RoundedButton(
                          text: "Ingresar",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ;//HomeView();
                                },
                              ),
                            );
                          },
                        )
                        ]

                        )
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