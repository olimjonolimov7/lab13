// lib/login_screen.dart
import 'package:flutter/material.dart';
import 'custom_widgets.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(labelText: 'Username', icon: Icons.person, controller: usernameController),
            SizedBox(height: 16),
            CustomTextField(labelText: 'Password', icon: Icons.lock, controller: passwordController),
            SizedBox(height: 16),
            CustomButton(
              text: 'Login',
              onPressed: () {
                // Add your login logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
