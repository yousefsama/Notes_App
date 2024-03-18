import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.cyan),
        child: Center(
            child: Text(
          'Add',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
      ),
    );
  }
}
