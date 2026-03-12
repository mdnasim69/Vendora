import 'package:flutter/material.dart';

class AppBarIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const AppBarIconButton({
    super.key, required this.onTap, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.grey.shade200,
        ),
        child: Icon(icon),

      ),
    );
  }
}
