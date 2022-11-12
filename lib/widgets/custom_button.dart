// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key, this.onTap,required this.text}) : super(key: key);
   VoidCallback?  onTap;
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        width: double.infinity,
        height: 50,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
