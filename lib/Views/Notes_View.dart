import 'package:flutter/material.dart';
import 'package:noteapp/Views/CustomViewsHelper/AppBar.dart';
import 'package:noteapp/Widgets/Notes-ListView.dart';

class NotesView extends StatelessWidget {
  const NotesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomAppBar(title: 'Notes', icon: Icons.search),
          Note_ListView(),
        ],
      ),
    );
  }
}
