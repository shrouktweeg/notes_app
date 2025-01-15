
import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomButton extends StatelessWidget {
  final void Function()?onTap;
  const CustomButton({super.key, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text('Add',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500),),
        ),
      
      ),
    );
  }
}