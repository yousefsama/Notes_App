import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/CustomButtom.dart';
import 'package:noteapp/Widgets/CustomTextField.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 15,
          ),
          CustomTextField(hint: 'content', maxlines: 8),
          Spacer(),
          CustomButtom(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
