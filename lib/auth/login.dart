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
        color: MainLayout.backgroundColor,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      'assets/images/foto.png',
                      height: 200,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: MainLayout.primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              size: 80,
                              color: MainLayout.primaryColor,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 40,),

                    const Text(
                      'welcome back',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: MainLayout.textTitleColor,
                        letterSpacing: -0.5,
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Text(
                      'Sign in to your account to conntinue',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        color: MainLayout.textSubtitleColor,
                      ),
                    ),
                    const SizedBox(height: 48,),

                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        labelStyle: TextStyle(
                          color: MainLayout.labelColor,
                          
                        ),
                        prefixIcon: const Icon(Icons.email_outlined,
                        color: MainLayout.primaryColor,),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: MainLayout.InputBorderColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: MainLayout.primaryColor, width: 2),
                        ),
                        filled: true,
                        fillColor: MainLayout.inputFillColor,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: MainLayout.labelColor
                        ),
                        prefixIcon: const Icon(Icons.lock_outlined,
                        color: MainLayout.primaryColor,),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: MainLayout.InputBorderColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: MainLayout.primaryColor, width: 2),
                        ),
                        filled: true,
                        fillColor: MainLayout.inputFillColor,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment:Alignment.centerRight,
                      child: TextButton(
                        onPressed: (){},
                      style:TextButton.styleFrom(
                        foregroundColor: MainLayout.accentOrange),
                      
                      child:const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600
                        ),
                      ) 
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}