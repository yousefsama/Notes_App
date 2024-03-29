import 'package:flutter/material.dart';

class IconSearchWithContainer extends StatelessWidget {
  const IconSearchWithContainer({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        icon,
        size: 28,
      ),
    );
  }
}
