import 'package:flutter/material.dart';
import 'package:argoacademy/utils/constants.dart';
import 'package:argoacademy/views/home/HomeView.dart';
import 'package:argoacademy/components/RoundedButton.dart';
import 'package:argoacademy/components/RoundedTextField.dart';
import 'package:argoacademy/components/RoundedPasswordField.dart';
import 'package:argoacademy/views/coversations/ConversationsView.dart';


class Body extends StatelessWidget {

  GlobalKey<FormState> keyForm = new GlobalKey();

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
                        Form(
                            key: keyForm,
                            child: Column(
                                children: <Widget>[

                                  RoundedTextField(
                                      hintText: "Email",
                                      keyboardType: TextInputType.emailAddress,
                                      onChanged: (value) {},
                                      errorText: "El email es requrido"
                                  ),
                                  RoundedTextField(
                                      hintText: "Password",
                                      keyboardType: TextInputType.visiblePassword,
                                      onChanged: (value) {},
                                      errorText: "El password es requrido"
                                  ),
                                  RoundedButton(
                                    text: "Ingresar",
                                    color : PrimaryColorArgo,
                                    press: () {
                                      // otherwise.
                                          if (keyForm.currentState.validate()) {
                                            // If the form is valid, display a Snackbar.
                                             // Scaffold.of(context)
                                               // .showSnackBar(SnackBar(content: Text('Processing Data')));
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) {
                                                        return ConversationsView();
                                                      },
                                                    ),
                                              );
                                          }
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