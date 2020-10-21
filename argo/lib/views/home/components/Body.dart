import 'package:flutter/material.dart';
import 'package:Argo/utils/constants.dart';
import 'package:Argo/components/RoundedButton.dart';
import 'package:Argo/views/login/LoginView.dart';
import 'package:Argo/views/register/RegisterView.dart';
import 'package:Argo/views/home/components/BackgroundImage.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    /*return Stack(
      height: size.height,
      width: double.infinity,
      child: Column(
        alignment: Alignment.center,
        children: <Widget>[
           // BackgroundImage(),
           
           
            RoundedButton(
              text: "Inicia Sesion",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginView();
                    },
                  ),
                );
              },
            ),
             SizedBox(height: 20),
            Text(
              "Bienvenido a Argo",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            
            

        ],
      ),
    );*/

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      BackgroundImage(),
                    ]
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                          child:Text(
                          "Bienvenido a Argo",
                          style: TextStyle(fontWeight: FontWeight.normal , fontSize: 20.0),
                          textAlign: TextAlign.center,
                       )
                      ),
                      SizedBox(height: 20),
                      RoundedButton(
                        text: "Registrate",
                        color : PrimaryColorArgo,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RegisterView();
                              },
                            ),
                          );
                        },
                      ),
                     
                      RoundedButton(
                          text: "Inicia Sesion",
                          color : PrimaryColorArgo,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginView();
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
