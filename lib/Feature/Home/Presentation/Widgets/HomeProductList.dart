
import 'package:flutter/material.dart';
import 'package:vendora/Feature/Share/Presentation/Widgets/ProductItem.dart';

class HomeProductList extends StatelessWidget {
  const HomeProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ProductItem();
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 6);
        },
        itemCount: 5,
      ),
    );
  }
}
