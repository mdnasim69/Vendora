import 'package:flutter/material.dart';
import 'package:vendora/Feature/Share/Presentation/Widgets/ProductItem.dart';

class Productlistbycategoryscreen extends StatefulWidget {
  static String name = "/productlistbycategoryscreen";

  const Productlistbycategoryscreen({super.key, required this.category});

  final String category;

  @override
  State<Productlistbycategoryscreen> createState() =>
      _ProductlistbycategoryscreenState();
}

class _ProductlistbycategoryscreenState
    extends State<Productlistbycategoryscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.category)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount:30,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio:0.7,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
          ),
          itemBuilder: (context, index) {
            return FittedBox(child: ProductItem());
          },
        ),
      ),
    );
  }
}
