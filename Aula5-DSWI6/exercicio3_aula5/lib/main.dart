import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App com Background Amarelo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Exercício 2 - Aula 5 (DSWI6)'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: Colors.yellow
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: const Center(
          child: Text(
            'MaterialApp com ThemeData com background amarelo',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}