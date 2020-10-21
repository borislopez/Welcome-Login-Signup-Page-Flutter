import 'package:flutter/material.dart';
import 'package:argotutor/views/home/HomeView.dart';
import 'package:argotutor/components/RoundedButton.dart';
import 'package:argotutor/components/RoundedTextMultiLineField.dart';



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

                                  RoundedTextMultiLineField(
                                      hintText: "Descripcion",
                                      onChanged: (value) {},
                                  ),
                                  RoundedTextMultiLineField(
                                    hintText: "Descripcion",
                                    onChanged: (value) {},
                                  ),
                                  RoundedTextMultiLineField(
                                    hintText: "Descripcion",
                                    onChanged: (value) {},
                                  ),
                                  RoundedTextMultiLineField(
                                    hintText: "Descripcion",
                                    onChanged: (value) {},
                                  ),

                                  RoundedButton(
                                    text: "Ingresar",
                                    press: () {

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

  void submitForm(BuildContext context){
    // otherwise.
      if (keyForm.currentState.validate()) {
          // If the form is valid, display a Snackbar.
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
      }else{

      }
  }

}