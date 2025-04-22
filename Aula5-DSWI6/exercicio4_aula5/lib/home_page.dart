import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    final title = const Text(
      'Cheetah Coding',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );

    final buttons = isPortrait ? Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)), child: const Text('BUTTON 1'),),
        const SizedBox(width: 50),
        ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)), child: const Text('BUTTON 2')),
      ],
    ) : Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)), child: const Text('BUTTON 1'),),
        const SizedBox(width: 50),
        ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)), child: const Text('BUTTON 2')),
      ],
    );

    final languages = SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text('Dart', style: TextStyle(fontSize: 24),),
        SizedBox(height: 8),
        Divider(),
        SizedBox(height: 8),
        Text('JavaScript', style: TextStyle(fontSize: 24),),
        SizedBox(height: 8),
        Divider(),
        SizedBox(height: 8),
        Text('PHP', style: TextStyle(fontSize: 24),),
        SizedBox(height: 8),
        Divider(),
        SizedBox(height: 8),
        Text('C++', style: TextStyle(fontSize: 24),),
      ],
    ),);

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Layouts'), centerTitle: true,),
      
      body: Center(
        child: isPortrait
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  title,
                  const SizedBox(height: 20),
                  buttons,
                  const SizedBox(height: 20),
                  languages,
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    
                    children: [
                      title,
                      const SizedBox(height: 20),
                      buttons,
                    ],
                  ),), VerticalDivider(),
                  languages,
                ],
              ),
      ),
    );
  }
}
