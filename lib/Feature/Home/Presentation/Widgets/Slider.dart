
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vendora/App/appColor.dart';

class Cslider extends StatelessWidget {
  Cslider({
    super.key,
  });
  final ValueNotifier<int> _selectedPage = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150.0,
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
                    width: 10,
                    height: 10,
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
        ),
      ],
    );
  }
}