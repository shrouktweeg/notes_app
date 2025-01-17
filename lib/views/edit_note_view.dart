import 'package:flutter/material.dart';
import 'package:notes/models/note_view_model.dart';
import 'package:notes/widgets/note_item.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
 final NoteViewModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteItem(note: note,),
    );
  }
}
