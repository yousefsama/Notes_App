import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/add_notes_cubit/add_note_cubit.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.cyan),
            child: Center(
                child: state is AddNoteLoading
                    ? const CircularProgressIndicator()
                    : const Text(
                        'Add',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
          ),
        );
      },
    );
  }
}
