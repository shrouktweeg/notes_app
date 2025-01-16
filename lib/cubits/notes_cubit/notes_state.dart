part of 'notes_cubit.dart';

sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class NotesLoading extends NotesState {}
final class NotesSuccess extends NotesState {
 final List<NoteViewModel>notes;

 NotesSuccess(this.notes);
}
final class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure(this.errorMessage);

}


