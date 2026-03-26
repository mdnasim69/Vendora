import 'package:flutter/material.dart';
import 'package:vendora/App/appColor.dart';
import 'package:vendora/Feature/Product/Presentation/Screens/ProductListByCategoryScreen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          Productlistbycategoryscreen.name,
          arguments: title,
        );
      },
      child: Column(
        children: [
          Card(
            color: AppColor.themeColor.withAlpha(30),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.computer, color: AppColor.themeColor, size: 52),
            ),
          ),
          Text(
            GetString(title),
            style: TextStyle(color: AppColor.themeColor, fontSize: 16),
          ),
        ],
      ),
    );
  }

  String GetString(String name) {
    if (name.length > 10) {
      return '${name.substring(0, 10)}..';
    } else {
      return name;
    }
  }
}
