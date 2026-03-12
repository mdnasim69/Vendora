import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vendora/App/AppImage.dart';
import 'package:vendora/App/appColor.dart';
import 'package:vendora/Feature/Home/Presentation/Widgets/AppBarIconButton.dart';
import 'package:vendora/Feature/Share/Presentation/Widgets/MyAppBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> _selectedPage = ValueNotifier(0);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SearchField(),
            SizedBox(height: 16),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                viewportFraction:.85,
                onPageChanged: (index, reason) {
                  _selectedPage.value=index;
                },
                autoPlayInterval: Duration(seconds: 2),
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: AppColor.themeColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text('text $i', style: TextStyle(fontSize: 16.0)),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 8,),
            ValueListenableBuilder(
              builder: (context,value,_) {
                return Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Container(
                        width: 15,
                        height: 15,
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:value==i?AppColor.themeColor: Colors.transparent,
                          border: Border.all(color: AppColor.themeColor, width: 1)
                        ),
                      )
                  ],
                );
              }, valueListenable: _selectedPage,
            )
          ],
        ),
      ),
      appBar: MyAppBar(),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        hintText: "Search",
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }
}
