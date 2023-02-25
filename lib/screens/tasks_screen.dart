import 'package:flutter/material.dart';
import 'package:taskly_mobile/core/task_item.dart';
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: double.maxFinite,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://jeffsegovia.dev/me.jpg'),
              ),
              const SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Good morning 👋',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const Text(
                    'Jeff Segovia',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Palette.almostBlack,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
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
                color: Palette.almostBlack,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              children: _taskStatusList
                  .map(
                    (status) => ChoiceChip(
                      label: Text(status),
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
              child: ListView(
                shrinkWrap: true,
                children: const [
                  TaskItem(),
                  TaskItem(),
                  TaskItem(),
                  TaskItem(),
                  TaskItem(),
                  TaskItem(),
                  TaskItem(),
                  TaskItem(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.task),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ]),
    );
  }
}
