
import 'package:flutter/material.dart';
import 'package:vendora/Feature/Share/Presentation/Widgets/CategoryItem.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 116,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 6);
        },
        itemCount: 10,
      ),
    );
  }
}
