import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vendora/Feature/Home/Presentation/Widgets/CategoryListItem.dart';
import 'package:vendora/Feature/Home/Presentation/Widgets/HomeProductList.dart';
import 'package:vendora/Feature/Home/Presentation/Widgets/SearchField.dart';
import 'package:vendora/Feature/Home/Presentation/Widgets/Slider.dart';
import 'package:vendora/Feature/Home/Presentation/Widgets/TitleHeader.dart';
import 'package:vendora/Feature/Share/Presentation/Provider/mainBottomNavProvider.dart';
import 'package:vendora/Feature/Share/Presentation/Widgets/MyAppBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    MainBottomNavProvider mainBottomNavProvider =Provider.of<MainBottomNavProvider>(context);
    ValueNotifier<int> _selectedPage = ValueNotifier(0);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchField(),
              SizedBox(height: 16),
              Cslider(),
              TitleHeader(onTap: () {mainBottomNavProvider.SetSelectedIndex(1);}, title: 'Category'),
              SizedBox(height: 8),
              CategoryListItem(),
              TitleHeader(onTap: () {}, title: 'Popular'),
              HomeProductList(),
              TitleHeader(onTap: () {}, title: 'New'),
              HomeProductList(),
              TitleHeader(onTap: () {}, title: 'Spacial'),
              HomeProductList(),
            ],
          ),
        ),
      ),
      appBar: MyAppBar(),
    );
  }
}
