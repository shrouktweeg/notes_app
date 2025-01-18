import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_view_model.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_field.dart';
import 'package:notes/widgets/edit_notes_color_list.dart';


class EditNoteItem extends StatefulWidget {
  const EditNoteItem({super.key, required this.note});
  final NoteViewModel note;

  @override
  State<EditNoteItem> createState() => _EditNoteItemState();
}

class _EditNoteItemState extends State<EditNoteItem> {
  String? title,content;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 36),
      child: Column(
        children: [
          CustomAppBar(icon: const Icon(Icons.check),title: 'Edit Note',onPressed: (){
            widget.note.title=title??widget.note.title;
            widget.note.subTitle=content??widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchNotes();
            Navigator.pop(context);
          },),
          const SizedBox(height: 30,),
           CustomTextFormField(hint:widget.note.title,onChange: (value){
             title=value;
           },),
          const SizedBox(height: 20,),
           CustomTextFormField(hint:widget.note.subTitle,maxLines: 5,
             onChange: (value){
             content=value;
           },),
          const SizedBox(height: 30,),
          EditNotesColorList(note: widget.note,)

        ],
      ),
    );
  }
}
