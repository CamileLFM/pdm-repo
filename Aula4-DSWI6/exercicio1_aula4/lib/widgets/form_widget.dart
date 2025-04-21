import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final TextEditingController controller;
  final String validatorMsg;
  final TextInputType keyboardType;

  const FormWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.controller,
    required this.validatorMsg,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 10),
        Expanded(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(labelText: label),
            keyboardType: keyboardType,
            validator: (value) =>
                value!.isEmpty ? validatorMsg : null,
          ),
        ),
      ],
    );
  }
}
