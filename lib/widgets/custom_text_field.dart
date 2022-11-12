// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
   CustomFormTextField({this.onChanged,this.hintText,this.obscureText = false});
  String? hintText;
  bool? obscureText;
 Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (data)
      {
        if (data!.isEmpty )
          {
            return 'field is required';
          }
        return null;
      },
      onChanged:onChanged ,
      decoration: InputDecoration(
        hintText:hintText ,
        helperStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
