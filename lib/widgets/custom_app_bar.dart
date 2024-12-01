import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Icon icon;
  const CustomAppBar({super.key,required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children:  [
        Text(title,style: const TextStyle(fontSize: 28),),
        const Spacer(),
        CustomIcon(icon: icon,),

      ],);
  }
}