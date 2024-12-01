import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0, vertical: 36),
      child: Column(
        children: [
          CustomAppBar(icon: Icon(Icons.check),title: 'Edit Note',),
        ],
      ),
    );
  }
}
