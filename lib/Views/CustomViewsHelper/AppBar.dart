import 'package:flutter/material.dart';
import 'package:noteapp/Views/CustomViewsHelper/IconSearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 28),
          ),
          const Spacer(),
          IconSearchWithContainer(icon: icon),
        ],
      ),
    );
  }
}
