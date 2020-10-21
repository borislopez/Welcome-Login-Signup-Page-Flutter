import 'package:flutter/material.dart';
import 'package:Argo/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: SecondaryColorArgo,
        borderRadius: BorderRadius.circular(29),
        border: Border.all()
      ),
      child: child,
    );
  }
}