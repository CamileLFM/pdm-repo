import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My Home Page", style: TextStyle(fontSize: 30),),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Text(
                  'Hello, World!',
                  selectionColor: Colors.red,
                  style: TextStyle(color: Colors.blue[900], fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              SizedBox(height: 60),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 60)
                  ),
                  onPressed: () => {},
                  child: Text(
                    "A button",
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
