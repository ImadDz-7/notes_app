import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());

  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBoxes);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccessState(notes));
    } catch (e) {
      emit(NotesFailureState(e.toString()));
    }
  }
}
