import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_note_items_list.dart';


class NoteBody extends StatelessWidget {
  const NoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0, vertical: 36),
      child: Column(
        children:  [
          CustomAppBar(icon: Icon(Icons.search),title: 'Notes',),
          Expanded(child: CustomNoteItemsList()),
        ],
      ),
    );
  }
}
