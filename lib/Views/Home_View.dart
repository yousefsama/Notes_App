import 'package:flutter/material.dart';

import 'package:noteapp/Views/Notes_View.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black.withOpacity(0.8),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      body: const NotesView(),
    );
  }
}
