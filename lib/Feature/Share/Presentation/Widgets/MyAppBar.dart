
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vendora/App/AppImage.dart';
import 'package:vendora/Feature/Home/Presentation/Widgets/AppBarIconButton.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: SvgPicture.asset(AppImage.navLogo, height: 30, width: 100),
      actions: [
        AppBarIconButton(onTap: () {}, icon: Icons.person),
        AppBarIconButton(onTap: () {}, icon: Icons.phone),
        AppBarIconButton(onTap: () {}, icon: Icons.notifications),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
