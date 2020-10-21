import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Positioned(
              top: 0,
              left: -40,
              child: Image.asset(
                'assets/images/fondo.png',
                width: size.width
              ),
          );
  }

}