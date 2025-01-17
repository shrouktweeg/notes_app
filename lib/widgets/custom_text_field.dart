import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final int maxLines;
  final void Function(String)?onChange;
  final void Function(String?)? onSaved;
  const CustomTextFormField({super.key,required this.hint,this.maxLines=1,this.onSaved, this.onChange});


  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onSaved:onSaved,
      validator:(value){
        if(value?.isEmpty??true){
          return "Field is Required";
        }
        else{
          return null;
        }
      } ,
      onChanged: onChange,
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