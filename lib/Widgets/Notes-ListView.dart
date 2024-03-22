import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Models/Notes_Model.dart';
import 'package:noteapp/Widgets/Note_Item.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit.dart';

class Note_ListView extends StatelessWidget {
  const Note_ListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NotesModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Expanded(
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Note_Item(),
              );
            },
          ),
        );
      },
    );
  }
}
