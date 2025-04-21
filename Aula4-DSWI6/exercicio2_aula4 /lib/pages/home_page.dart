import 'package:flutter/material.dart';
import '../widgets/custom_bottom_app_bar.dart';
import '../widgets/fab_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  bool _isFabMenuOpen = false;
  final List<String> _tabLabels = ['Início', 'Busca', 'Perfil', 'Alarme'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BottomAppBar Demo',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text(
          'TAB: ${_currentIndex + 1} - ${_tabLabels[_currentIndex]}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButton: FabMenu(
        isOpen: _isFabMenuOpen,
        onToggle: () => setState(() => _isFabMenuOpen = !_isFabMenuOpen),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(
        currentIndex: _currentIndex,
        tabLabels: _tabLabels,
        onTabSelected: (index) => setState(() {
          _currentIndex = index;
          _isFabMenuOpen = false;
        }),
      ),
    );
  }
}