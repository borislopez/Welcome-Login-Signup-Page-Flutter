import 'dart:io';

import 'package:flutter/material.dart';
import 'package:argoacademy/utils/constants.dart';

class AppBarArgo extends StatelessWidget implements PreferredSizeWidget {


  @override  
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {

    return  AppBar(
        backgroundColor: SecondaryColorArgo,
        // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
            title: const Text('Argo', style: TextStyle(
                color: PrimaryColorArgo
            )),

            automaticallyImplyLeading: true,
            //`true` if you want Flutter to automatically add Back Button when needed,
            //or `false` if you want to force your own back button every where
          /*  leading: IconButton(icon:Icon(Icons.arrow_back),
                onPressed:() => Navigator.pop(context, false),
            )*/

      );
  }

}