import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/Models/Notes_Model.dart';
import 'package:noteapp/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NotesModel>? notes;
  fetchNotes() {
    var notesBox = Hive.box<NotesModel>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
