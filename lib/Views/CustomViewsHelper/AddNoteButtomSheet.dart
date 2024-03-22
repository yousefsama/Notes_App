import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Views/CustomViewsHelper/validation_Notes_Form.dart';
import 'package:noteapp/cubits/cubit/add_notes_cubit/add_note_cubit.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteIFailer) {
              print("there was an failer${state.errorMessage}");
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
                absorbing: state is AddNoteLoading ? true : false,
                child: const ValidationNotesForm());
          },
        ),
      ),
    );
  }
}
