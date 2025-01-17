import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 6.0),
      child: CircleAvatar(
        radius: 38,
        backgroundColor: Colors.blue,
      ),
    );
  }
}