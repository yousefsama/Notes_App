import 'package:flutter/material.dart';
import 'package:noteapp/Views/CustomViewsHelper/AppBar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        SizedBox(
          height: 16,
        ),
        CustomAppBar(title: 'Edit Notes', icon: Icons.check),
      ]),
    );
  }
}
