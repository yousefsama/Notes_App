import 'package:flutter/material.dart';
import 'package:noteapp/Views/CustomViewsHelper/IconSearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Note App',
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        IconSearchWithContainer(),
      ],
    );
  }
}
