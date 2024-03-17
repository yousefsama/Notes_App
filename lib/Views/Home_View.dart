import 'package:flutter/material.dart';
import 'package:noteapp/Views/CustomViewsHelper/AddNoteButtomSheet.dart';

import 'package:noteapp/Views/Notes_View.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          backgroundColor: Colors.black.withOpacity(0.8),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return AddNoteButtomSheet();
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      body: NotesView(),
    );
  }
}
