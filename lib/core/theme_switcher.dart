import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskly_mobile/providers/theme_provider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeProvider>().currentThemeMode;

    final isLight = themeMode == ThemeMode.light;

    return IconButton(
      onPressed: () {
        context
            .read<ThemeProvider>()
            .changeTheme(isLight ? ThemeMode.dark : ThemeMode.light);
      },
      icon:
          Icon(isLight ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
    );
  }
}
