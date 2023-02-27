import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:taskly_mobile/core/primary_button.dart';
import 'package:taskly_mobile/theme/palette.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Details'),
        centerTitle: false,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Learn Flutter',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Description',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'I want to learn Flutter so I can build crazy apps with it. Yow, just some sample texts here.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Due Date',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'March 12, 2023',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Subtasks',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 16),
            const Subtask(title: 'Read the docs'),
            const Subtask(title: 'Study Dart'),
            const Subtask(title: 'Try some widgets'),
            const Subtask(title: 'Add state'),
            const Subtask(title: 'Add data layer'),
            const Spacer(),
            PrimaryButton(onPressed: () {}, text: 'Edit Task'),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class Subtask extends StatefulWidget {
  const Subtask({super.key, required this.title});

  final String title;

  @override
  State<Subtask> createState() => _SubtaskState();
}

class _SubtaskState extends State<Subtask> {
  bool _isCompleted = false;

  void toggleCompleted(bool val) {
    setState(() {
      _isCompleted = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        tileColor: Palette.appGrey,
        title: Text(widget.title),
        leading: Icon(
          _isCompleted ? Icons.check_circle : Icons.circle_outlined,
          size: 20,
          color: Theme.of(context).primaryColor,
        ),
        trailing: Checkbox(
          value: _isCompleted,
          onChanged: (value) => toggleCompleted(value!),
        ),
      ),
    );
  }
}
