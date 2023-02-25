import 'package:flutter/material.dart';
import 'package:taskly_mobile/theme/palette.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Palette.appGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onTap: () {},
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
                  color: Colors.grey.shade500,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Learn Flutter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Palette.almostBlack,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'I just want to learn Flutter yo',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
