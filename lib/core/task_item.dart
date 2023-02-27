import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskly_mobile/providers/theme_provider.dart';
import 'package:taskly_mobile/screens/task_detail_screen.dart';
import 'package:taskly_mobile/theme/palette.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeProvider>().currentThemeMode;

    final isLight = themeMode == ThemeMode.light;

    return Card(
      elevation: 0,
      color: isLight ? Palette.appGrey : Palette.softBgPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TaskDetailScreen(),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'March 12, 2023',
                style: TextStyle(
                  color: isLight ? Colors.grey.shade500 : Colors.grey.shade400,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Learn Flutter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: isLight ? Palette.almostBlack : Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'I just want to learn Flutter yo',
                style: TextStyle(
                  fontSize: 16,
                  color: isLight ? Colors.grey.shade600 : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
