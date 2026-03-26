import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vendora/Feature/Share/Presentation/Provider/mainBottomNavProvider.dart';
import 'package:vendora/Feature/Share/Presentation/Widgets/CategoryItem.dart';

class Categorylistscreen extends StatefulWidget {
  const Categorylistscreen({super.key});

  @override
  State<Categorylistscreen> createState() => _CategorylistscreenState();
}

class _CategorylistscreenState extends State<Categorylistscreen> {
  @override
  Widget build(BuildContext context) {
    MainBottomNavProvider mainBottomNavProvider =
        Provider.of<MainBottomNavProvider>(context);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) {
        mainBottomNavProvider.SetSelectedIndex(0);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              mainBottomNavProvider.SetSelectedIndex(0);
            },
            child: Icon(Icons.arrow_back_ios),
          ),
          title: Text("Categories"),
          centerTitle: true,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount:30,
          itemBuilder: (context,index){
            return FittedBox(child:CategoryItem(title:"Electronics item",),);
          },
        ),
      ),
    );
  }


}
