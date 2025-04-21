import 'package:flutter/material.dart';
import '../models/task.dart';
import '../widgets/task_card.dart';

class TaskHomePage extends StatefulWidget {
  const TaskHomePage({super.key});

  @override
  _TaskHomePageState createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {
  bool showCompletedOnly = false;

  List<Task> tasks = [
    Task(description: 'Task 2022-07-09 18:08:31.734244'),
    Task(description: 'Task 2022-07-09 18:08:32.210300'),
    Task(description: 'Task 2022-07-09 18:08:32.689026'),
    Task(description: 'Task 2022-07-09 18:08:33.073472'),
    Task(description: 'Task 2022-07-09 18:08:33.524172'),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredTasks = showCompletedOnly
        ? tasks.where((task) => task.isCompleted).toList()
        : tasks;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showCompletedOnly = !showCompletedOnly;
                });
              },
              child: Text(showCompletedOnly ? "View All Tasks" : "View Completed Tasks"),
            ),
            const SizedBox(height: 10),
            Text(
              'You have ${tasks.where((t) => !t.isCompleted).length} uncompleted tasks',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: filteredTasks.length,
                itemBuilder: (context, index) {
                  final task = filteredTasks[index];
                  return TaskCard(
                    task: task,
                    onChanged: (bool? value) {
                      setState(() {
                        final originalIndex = tasks.indexOf(task);
                        tasks[originalIndex].isCompleted = value ?? false;
                      });
                    },
                  );
                },
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Informação'),
              content: const Text('Você está no App de Notas de Tarefas'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Fechar'),
                ),
              ],
            ),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
