import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_notes_bottom_sheet.dart';
import 'package:notes/widgets/note_body.dart';


class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context, builder: (context) {
          return const CustomNotesBottomSheet();
        });
      },
        child: const Icon(Icons.add),
      ),
      body: const NoteBody(),
    );
  }
}





