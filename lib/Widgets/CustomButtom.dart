import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.cyan),
      child: Center(
          child: Text(
        'Add',
        style: TextStyle(color: Colors.black, fontSize: 20),
      )),
    );
  }
}
