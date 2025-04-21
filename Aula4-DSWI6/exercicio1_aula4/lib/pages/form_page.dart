import 'package:flutter/material.dart';
import '../widgets/form_widget.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dobController = TextEditingController();
  bool _isButtonEnabled = false;

  void _validateForm() {
    setState(() {
      _isButtonEnabled = _nameController.text.isNotEmpty &&
          _phoneController.text.isNotEmpty &&
          _dobController.text.isNotEmpty;
    });
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final phone = _phoneController.text;
      final dob = _dobController.text;

      final message = 'Name: $name\nPhone: $phone\nDOB: $dob';

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_validateForm);
    _phoneController.addListener(_validateForm);
    _dobController.addListener(_validateForm);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Form Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              FormWidget(
                icon: Icons.person,
                label: 'Name',
                controller: _nameController,
                validatorMsg: 'Enter your name',
              ),
              const SizedBox(height: 16),
              FormWidget(
                icon: Icons.phone,
                label: 'Phone',
                controller: _phoneController,
                validatorMsg: 'Enter your phone',
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              FormWidget(
                icon: Icons.calendar_today,
                label: 'Dob',
                controller: _dobController,
                validatorMsg: 'Enter your date of birth',
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _isButtonEnabled ? _submitForm : null,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
