import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Notas de Tarefas',
      home: TaskHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
