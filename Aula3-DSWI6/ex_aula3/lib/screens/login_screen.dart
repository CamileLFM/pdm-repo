import 'package:flutter/material.dart';
import '../models/login.dart';
import '../widgets/login_form.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _handleLogin(BuildContext context, Login login) {
    if (login.username == 'admin' && login.password == '1234') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login falhou. Verifique suas credenciais.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/flutterW.png', width: 100),
              const SizedBox(height: 32),
              LoginForm(onLogin: (login) => _handleLogin(context, login)),
            ],
          ),
        ),
      ),
    );
  }
}
