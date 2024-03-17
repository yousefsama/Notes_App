import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/Note_Item.dart';

class Note_ListView extends StatelessWidget {
  const Note_ListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Note_Item(),
          );
        },
      ),
    );
  }
}
