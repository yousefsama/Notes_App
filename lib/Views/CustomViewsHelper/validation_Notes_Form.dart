import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Models/Notes_Model.dart';
import 'package:noteapp/Widgets/CustomButtom.dart';
import 'package:noteapp/Widgets/CustomTextField.dart';
import 'package:noteapp/cubits/cubit/cubit/add_note_cubit.dart';

class ValidationNotesForm extends StatefulWidget {
  const ValidationNotesForm({
    super.key,
  });

  @override
  State<ValidationNotesForm> createState() => _ValidationNotesFormState();
}

class _ValidationNotesFormState extends State<ValidationNotesForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            hint: 'content',
            maxlines: 8,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const Spacer(),
          CustomButtom(onTap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              var note = NotesModel(
                  title: title!,
                  subtitle: subTitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value);
              BlocProvider.of<AddNoteCubit>(context).addNote(note);
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          }),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
