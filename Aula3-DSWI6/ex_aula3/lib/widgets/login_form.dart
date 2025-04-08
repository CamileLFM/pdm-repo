import 'package:flutter/material.dart';
import '../models/login.dart';

class LoginForm extends StatefulWidget {
  final void Function(Login) onLogin;

  const LoginForm({super.key, required this.onLogin});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submit() {
    final login = Login(
      username: _usernameController.text,
      password: _passwordController.text,
    );
    widget.onLogin(login);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _usernameController,
          decoration: const InputDecoration(labelText: 'Usuário'),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _passwordController,
          decoration: const InputDecoration(labelText: 'Senha'),
          obscureText: true,
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: _submit,
          child: const Text('Login'),
        ),
      ],
    );
  }
}
