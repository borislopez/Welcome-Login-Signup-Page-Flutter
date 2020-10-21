import 'package:flutter/material.dart';
import 'package:Argo/constants.dart';

class AppBarArgo extends StatelessWidget implements PreferredSizeWidget {

  @override  
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {

    return  AppBar(

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Argo', style: TextStyle(
            color: PrimaryColorArgo
        )),
        backgroundColor: SecondaryColorArgo,     
      );
  }

}