import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../services/user_service.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Controllers for user input
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Signup logic
  void _signup() {
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please fill all fields.')));
      return;
    }

    //  Create a new user model and register it
    final newUser = UserModel(
      name: _nameController.text.trim(),
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );

    UserService.registerUser(newUser);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Signup successful! Please login.')),
    );

    //  Move to login screen
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            
            children: [
              // Name field
               Text('GreenKyper',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Colors.green[700],
                  letterSpacing: 1.5,
                  shadows: [
                    Shadow(
                      blurRadius: 8.0,
                      color: Colors.black26,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
              ),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'Enter your full name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              // Email field
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              // Password field
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),

              // Signup button
              ElevatedButton(
                onPressed: _signup,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 40),
                ),
                child: const Text('Signup'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
