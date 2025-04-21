import 'package:flutter/material.dart';

class FabMenu extends StatelessWidget {
  final bool isOpen;
  final VoidCallback onToggle;

  const FabMenu({
    super.key,
    required this.isOpen,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isOpen)
          Column(
            children: [
              _buildMenuItem(Icons.email, 'Email', context),
              const SizedBox(height: 10),
              _buildMenuItem(Icons.phone, 'Telefone', context),
              const SizedBox(height: 10),
              _buildMenuItem(Icons.message, 'Mensagem', context),
              const SizedBox(height: 20),
            ],
          ),
        FloatingActionButton(
          onPressed: onToggle,
          backgroundColor: Colors.blue,
          shape: const CircleBorder(),
          child: Icon(
            isOpen ? Icons.close : Icons.add,
            color: Colors.white,
            size: 28,
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem(IconData icon, String label, BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          heroTag: label,
          mini: true,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('$label pressionado')),
            );
          },
          backgroundColor: Colors.blue[300],
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(color: Colors.black, fontSize: 12),
        ),
      ],
    );
  }
}