import 'package:flutter/material.dart';
import 'package:noteapp/Views/CustomViewsHelper/AppBar.dart';
import 'package:noteapp/Widgets/CustomTextField.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(children: [
          SizedBox(
            height: 16,
          ),
          CustomAppBar(title: 'Edit Notes', icon: Icons.check),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hint: 'content',
            maxlines: 5,
          )
        ]),
      ),
    );
  }
}
