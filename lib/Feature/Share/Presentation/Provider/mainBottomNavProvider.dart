import 'package:flutter/foundation.dart';

class MainBottomNavProvider with ChangeNotifier{
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void SetSelectedIndex(int val) {
     _selectedIndex = val;
     notifyListeners();
   }
}