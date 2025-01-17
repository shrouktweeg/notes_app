import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final Icon icon;
 final void Function()?onPressed;
  const CustomIcon({super.key,required this.icon,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      width: 52,
      height: 52,
      child: IconButton(
        iconSize: 35,
        onPressed:onPressed, icon: icon,),
    );
  }
}