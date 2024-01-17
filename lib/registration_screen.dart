// lib/registration_screen.dart
import 'package:flutter/material.dart';
import 'custom_widgets.dart';
import 'successful_screen.dart';

class RegistrationScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(labelText: 'Name', icon: Icons.person, controller: nameController),
            SizedBox(height: 16),
            CustomTextField(labelText: 'Email', icon: Icons.email, controller: emailController),
            SizedBox(height: 16),
            CustomTextField(labelText: 'Password', icon: Icons.lock, controller: passwordController),
            SizedBox(height: 16),
            CustomTextField(
              labelText: 'Confirm Password',
              icon: Icons.lock,
              controller: confirmPasswordController,
            ),
            SizedBox(height: 16),
            CustomButton(
              text: 'Register',
              onPressed: () {
                // Add your registration logic here
                // Navigate to the successful screen after registration
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SuccessfulScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
