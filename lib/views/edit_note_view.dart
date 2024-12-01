import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteItem(),
    );
  }
}
