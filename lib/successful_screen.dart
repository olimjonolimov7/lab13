// lib/successful_screen.dart
import 'package:flutter/material.dart';

class SuccessfulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Successful')),
      body: Center(
        child: Text('Registration Successful!'),
      ),
    );
  }
}
