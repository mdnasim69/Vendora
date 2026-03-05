
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vendora/App/AppImage.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.height=120,this.width=140});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppImage.logo, height: height, width: width);
  }
}
