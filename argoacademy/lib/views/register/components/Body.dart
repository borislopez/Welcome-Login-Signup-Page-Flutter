import 'package:flutter/material.dart';
import 'package:argoacademy/utils/constants.dart';
import 'package:argoacademy/components/RoundedButton.dart';
import 'package:argoacademy/components/RoundedTextField.dart';
import 'package:argoacademy/views/themesofinterest/ThemesOfInterestView.dart';


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
                  child: Column(
                      children: <Widget>[
                        RoundedTextField(
                            hintText: "Nombre",
                            icon: Icons.account_circle_outlined,
                            keyboardType: TextInputType.text,
                            onChanged: (value) {},
                            errorText: "El nombre es requrido"
                        ),
                        RoundedTextField(
                            hintText: "Email",
                            icon: Icons.email  ,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {},
                            errorText: "El email es requrido"
                        ),
                        RoundedTextField(
                            hintText: "Celular",
                            icon: Icons.phone  ,
                            keyboardType: TextInputType.phone,
                            onChanged: (value) {},
                            errorText: "El celular es requrido"
                        ),

                        RoundedTextField(
                            hintText: "DD/MM/Y",
                            icon: Icons.calendar_today ,
                            keyboardType: TextInputType.datetime,
                            onChanged: (value) {},
                            errorText: "El lugar de nacimiento es requrido"
                        ),
                        RoundedTextField(
                            hintText: "Lugar de nacimiento",
                            icon: Icons.language_rounded ,
                            keyboardType: TextInputType.text,
                            onChanged: (value) {},
                            errorText: "El lugar de nacimiento es requrido"
                        ),
                        FlatButton(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                            child: Column( // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Align(
                                    alignment: FractionalOffset(0.2, 0.6),
                                    child: Icon(
                                        Icons.arrow_forward,
                                        color : GreenColorArgo
                                    ),
                                )
                              ],
                            ),
                            onPressed: () {
                              // otherwise.ans
                              submitForm(context);
                            },

                        ),
                       

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


  void submitForm(BuildContext context){
      // otherwise.
      if (keyForm.currentState.validate()) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) {
                      return ThemesOfInterestView();
                  },
              ),
          );

      }
  }

}