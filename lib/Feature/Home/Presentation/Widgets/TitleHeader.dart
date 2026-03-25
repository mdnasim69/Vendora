
import 'package:flutter/material.dart';
import 'package:vendora/App/appColor.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({super.key, required this.onTap, required this.title});

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: onTap,
          child: Text("See All", style: TextStyle(color:AppColor.themeColor)),
        ),
      ],
    );
  }
}
