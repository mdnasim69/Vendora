import 'dart:async';

import 'package:flutter/cupertino.dart';

class OtpTimerProvider with ChangeNotifier{
  int _seconds =60;
  int get seconds => _seconds;

   void Count(){
    _seconds=60;
    Timer.periodic(Duration(seconds: 1),(t){
      _seconds--;
      notifyListeners();
      if(_seconds==0){
        t.cancel();
      }
    });
  }
}