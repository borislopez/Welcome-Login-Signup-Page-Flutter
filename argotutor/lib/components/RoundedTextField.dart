import 'package:flutter/material.dart';
import 'package:argotutor/utils/constants.dart';
import 'package:argotutor/components/TextFieldContainer.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final String errorText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;


  const RoundedTextField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
    this.errorText,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        keyboardType: keyboardType,
        textInputAction: TextInputAction.newline,
        onChanged: onChanged,
        cursorColor: PrimaryColorArgo,

        validator: (value) {
          if (value.isEmpty) {
            return errorText;
          }
          return null;
        },
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: PrimaryColorArgo,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
