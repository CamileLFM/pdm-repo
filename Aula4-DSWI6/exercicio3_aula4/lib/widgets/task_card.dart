import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final Function(bool?) onChanged;

  const TaskCard({
    super.key,
    required this.task,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber[200],
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(task.description),
        trailing: Checkbox(
          value: task.isCompleted,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
