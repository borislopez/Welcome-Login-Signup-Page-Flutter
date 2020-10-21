import 'package:flutter/material.dart';
import 'package:argoacademy/components/TextFieldContainer.dart';
import 'package:argoacademy/utils/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: PrimaryColorArgo,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: PrimaryColorArgo,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: PrimaryColorArgo,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
