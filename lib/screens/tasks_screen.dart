import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskly_mobile/core/greeting.dart';
import 'package:taskly_mobile/core/task_item.dart';
import 'package:taskly_mobile/core/theme_switcher.dart';
import 'package:taskly_mobile/providers/theme_provider.dart';
import 'package:taskly_mobile/theme/palette.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  static const List<String> _taskStatusList = [
    'All',
    'To Do',
    'In Progess',
    'Paused',
    'Done'
  ];

  String _selectedStatus = 'All';

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeProvider>().currentThemeMode;

    final isLight = themeMode == ThemeMode.light;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: double.maxFinite,
        leading: const Greeting(),
        actions: const [ThemeSwitcher()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'You task list',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              children: _taskStatusList
                  .map(
                    (status) => ChoiceChip(
                      label: Text(status),
                      backgroundColor: isLight
                          ? Theme.of(context).chipTheme.backgroundColor
                          : Palette.softBgPrimary,
                      labelStyle: TextStyle(
                        color: isLight ? Palette.almostBlack : Colors.white,
                      ),
                      selected: status == _selectedStatus,
                      onSelected: (isSelected) {
                        if (!isSelected) return;
                        setState(() {
                          _selectedStatus = status;
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
            Flexible(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) => const TaskItem(),
                separatorBuilder: (context, index) => const SizedBox(height: 8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
