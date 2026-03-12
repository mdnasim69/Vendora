import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  static String name = "/mainBottomNavScreen";

  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedIndex: _selectedIndex,elevation: 0,
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
}
