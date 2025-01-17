import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_view_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color=const Color(0Xff5B913B);
  addNote(NoteViewModel note)async{
    note.color=color.value;
    emit(AddNoteLoading());
    try{
      var notesBox=Hive.box<NoteViewModel>(kNotesBox);
      emit(AddNoteSuccess());
      notesBox.add(note);
    }catch(e){
      emit(AddNoteFailure(e.toString()));
    }
  }
}
