import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_note_items_list.dart';


class NoteBody extends StatefulWidget {
  const NoteBody({super.key});

  @override
  State<NoteBody> createState() => _NoteBodyState();
}

class _NoteBodyState extends State<NoteBody> {
  @override
  void initState() {
  BlocProvider.of<NotesCubit>(context).fetchNotes();
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 36),
      child: Column(
        children:  [
          CustomAppBar(icon: Icon(Icons.search),title: 'Notes',),
          Expanded(child: CustomNoteItemsList()),
        ],
      ),
    );
  }
}
