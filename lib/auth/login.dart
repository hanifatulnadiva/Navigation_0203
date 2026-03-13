import 'package:flutter/material.dart';
import 'package:navigation_0203/main%20layout.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Login',
      showAppBar: false,
      child: Container(
        
      ),
    );
  }
}