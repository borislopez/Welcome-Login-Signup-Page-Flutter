import 'package:flutter/material.dart';
import 'package:Argo/utils/constants.dart';
import 'package:Argo/components/TextFieldContainer.dart';

class RoundedTextMultiLineField extends StatelessWidget {
  final String hintText;
  final String errorText;
  final IconData icon;
  final ValueChanged<String> onChanged;


  const RoundedTextMultiLineField({
    Key key,
    this.hintText,
    this.icon =  Icons.article_sharp,
    this.onChanged,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        keyboardType:  TextInputType.multiline,
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
