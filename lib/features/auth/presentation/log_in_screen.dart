
import 'package:flutter/material.dart';
class LogInScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is Log in Screen'
        ),
      ),
    );
  }
}
