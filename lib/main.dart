import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/Models/Notes_Model.dart';

import 'package:noteapp/Views/Home_View.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit.dart';

import 'package:noteapp/simple_cubit_observer.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleCubitObserver();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox<NotesModel>(kNotesBox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        routes: {
          HomeView.id: (context) => const HomeView(),
        },
        initialRoute: HomeView.id,
      ),
    );
  }
}
