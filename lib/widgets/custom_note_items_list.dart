import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class CustomNoteItemsList extends StatelessWidget {
  const CustomNoteItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
          itemBuilder: (context,index){
            return const Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.0),
              child: CustomNoteItem(),
            );
          }),
    );
  }
}