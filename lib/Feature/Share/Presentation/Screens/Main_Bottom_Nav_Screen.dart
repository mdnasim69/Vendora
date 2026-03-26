import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vendora/Feature/Category/Presentation/screens/categoryListScreen.dart';
import 'package:vendora/Feature/Home/Presentation/Screens/home.dart';
import 'package:vendora/Feature/Share/Presentation/Provider/mainBottomNavProvider.dart';

class MainBottomNavScreen extends StatefulWidget {
  static String name = "/mainBottomNavScreen";

  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final List<Widget> _screens =[
    Home(),
    Categorylistscreen(),
    Home(),
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainBottomNavProvider>(
      builder: (context,ctr,_) {
        return Scaffold(
          body: _screens[ctr.selectedIndex],
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              ctr.SetSelectedIndex(index);
            },
            selectedIndex: ctr.selectedIndex,elevation: 0,
            indicatorColor:Colors.greenAccent,
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.dashboard_outlined), label: "Categories"),
              NavigationDestination(icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
              NavigationDestination(icon: Icon(Icons.favorite), label: "Wish List"),
            ],
          ),
        );
      }
    );
  }
}
