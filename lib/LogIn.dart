import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/colors.dart';

class WaiterLoginScreen extends StatefulWidget {
  const WaiterLoginScreen({super.key});

  @override
  State<WaiterLoginScreen> createState() => _WaiterLoginScreenState();
}

class _WaiterLoginScreenState extends State<WaiterLoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _login() {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    // يمكنك ربطها بـ Firebase أو التحقق المحلي هنا
    if (email.isNotEmpty && password.isNotEmpty) {
      // تنفيذ عملية تسجيل الدخول
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('  You have been logged in successfully')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your email and password.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assests/photo_2025-06-06_18-09-50-removebg-preview.png',
                width: 200,
              ),
              const SizedBox(height: 16),
              const Text(
                'Waiter Login',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: color1,
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'ُEmail',
                  prefixIcon: const Icon(Icons.email),
                  hintText: 'user@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: ' Password',
                  hintText: 'should be long and strong',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color1,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    ' Login',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
