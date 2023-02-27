import 'package:flutter/material.dart';
import 'package:taskly_mobile/theme/palette.dart';

class AppTheme {
  static ThemeData defaultTheme(BuildContext context) {
    final theme = Theme.of(context);

    return ThemeData(
      primaryColor: Palette.primary,
      colorScheme: theme.colorScheme.copyWith(
        primary: Palette.primary,
      ),
      appBarTheme: theme.appBarTheme.copyWith(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Palette.almostBlack,
        titleTextStyle: const TextStyle(
          color: Palette.almostBlack,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: Palette.primary,
          foregroundColor: Colors.white,
        ),
      ),
      chipTheme: theme.chipTheme.copyWith(
        selectedColor: Palette.primary,
        labelStyle: const TextStyle(fontSize: 16, color: Palette.almostBlack),
        secondaryLabelStyle: const TextStyle(color: Colors.white),
      ),
      scaffoldBackgroundColor: Colors.white,
      snackBarTheme: theme.snackBarTheme.copyWith(
        behavior: SnackBarBehavior.floating,
      ),
      floatingActionButtonTheme: theme.floatingActionButtonTheme.copyWith(
        backgroundColor: Palette.primary,
      ),
      checkboxTheme: theme.checkboxTheme.copyWith(
        fillColor: const MaterialStatePropertyAll(Palette.primary),
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    final darkTheme = Theme.of(context);

    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Palette.primary,
      colorScheme: darkTheme.colorScheme.copyWith(
        brightness: Brightness.dark,
        primary: Palette.primary,
      ),
      appBarTheme: darkTheme.appBarTheme.copyWith(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
        iconTheme: darkTheme.iconTheme.copyWith(
          color: Palette.primary,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            color: Palette.darkStroke,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: Palette.primary,
          foregroundColor: Colors.white,
        ),
      ),
      chipTheme: darkTheme.chipTheme.copyWith(
        selectedColor: Palette.primary,
        labelStyle: const TextStyle(fontSize: 16, color: Palette.almostBlack),
        secondaryLabelStyle: const TextStyle(color: Colors.white),
      ),
      snackBarTheme: darkTheme.snackBarTheme.copyWith(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Palette.primary,
        contentTextStyle: const TextStyle(color: Colors.white),
      ),
      scaffoldBackgroundColor: Palette.bgPrimary,
      floatingActionButtonTheme: darkTheme.floatingActionButtonTheme.copyWith(
        backgroundColor: Palette.primary,
      ),
      bottomNavigationBarTheme: darkTheme.bottomNavigationBarTheme.copyWith(
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Palette.primary,
      ),
      dialogBackgroundColor: Palette.softBgPrimary,
    );
  }
}
