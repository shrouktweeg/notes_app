import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteItem extends StatelessWidget {
  const EditNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0, vertical: 36),
      child: Column(
        children: [
          CustomAppBar(icon: Icon(Icons.check),title: 'Edit Note',),
          SizedBox(height: 30,),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 20,),
          CustomTextField(hint: 'Content',maxLines: 5,),

        ],
      ),
    );
  }
}
