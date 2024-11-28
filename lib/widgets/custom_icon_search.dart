import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({super.key});

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
        onPressed: (){}, icon: const Icon(Icons.search,),),
    );
  }
}