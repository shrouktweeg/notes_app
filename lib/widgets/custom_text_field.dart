import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  const CustomTextField({super.key,required this.hint,this.maxLines=1});


  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration:InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimaryColor),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(kPrimaryColor),
      ) ,
    );
  }
  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white)
    );
  }
}