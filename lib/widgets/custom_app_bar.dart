import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Icon icon;
  final void Function()?onPressed;
  const CustomAppBar({super.key,required this.title,required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Text(title,style: const TextStyle(fontSize: 28),),
        const Spacer(),
        CustomIcon(icon: icon,onPressed: onPressed,),

      ],);
  }
}