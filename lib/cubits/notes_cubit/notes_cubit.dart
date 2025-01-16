import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_view_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteViewModel>?notes;
  fetchNotes()async{
    var notesBox=Hive.box<NoteViewModel>(kNotesBox);
     notes=notesBox.values.toList();
     emit(NotesSuccess());

  }
}
