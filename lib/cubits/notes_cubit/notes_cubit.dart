import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_view_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchNotes()async{
    emit(NotesLoading());
    try{
    var notesBox=Hive.box<NoteViewModel>(kNotesBox);
      List<NoteViewModel>notes=notesBox.values.toList();
      emit(NotesSuccess(notes));
    }catch(e){
      emit(NotesFailure(e.toString()));
    }
  }
}
