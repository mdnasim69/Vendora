
import 'package:flutter/material.dart';
import 'package:vendora/App/appColor.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: AppColor.themeColor.withAlpha(30),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.computer,
              color: AppColor.themeColor,
              size: 52,
            ),
          ),
        ),
        Text("Electronics",style: TextStyle(
          color: AppColor.themeColor,
          fontSize: 16,
        ),),
      ],
    );
  }
}
