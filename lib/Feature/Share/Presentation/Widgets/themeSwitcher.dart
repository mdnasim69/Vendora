import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vendora/App/Provider/themeProvider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, ctr, _) {
        return PopupMenuButton(
          onSelected: (ThemeMode themeMode) {
            ctr.changeThemeMode(themeMode);
          },
          initialValue: ctr.themeMode,
          child: Text("Theme"),

          itemBuilder: (context) => ctr.themes
              .map((e) => PopupMenuItem(value: e, child: Text(e.name)))
              .toList(),
        );
      },
    );
  }
}
