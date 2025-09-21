import 'package:flutter/material.dart';
import 'package:my_journal_lite/viewmodels/auth_viewmodel.dart';
import './journal_home_screen.dart';
import './journal_register_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLogin = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authVM = Provider.of<AuthViewModel>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10, child: const SizedBox.shrink()),
              const Text(
                'Welcome Back',
                style: const TextStyle(
                  fontSize: 28,
                  color: const Color(0xFF1E3A8A),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24, child: const SizedBox.shrink()),
              TextField(
                controller: emailController,
                style: TextStyle(color: const Color(0xFF000000)),
                decoration: InputDecoration(
                  labelText: 'Email',
                  fillColor: const Color(0xFF000000),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xFF000000),
                      width: 1,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xFF000000),
                      width: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16, child: const SizedBox.shrink()),
              TextField(
                controller: passwordController,
                style: TextStyle(color: const Color(0xFF000000)),
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: '*******',
                  fillColor: const Color(0xFF000000),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xFF000000),
                      width: 1,
                    ),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16, child: const SizedBox.shrink()),
              SizedBox(
                width: 325,
                height: 50,
                child:
                    authVM.isLoading
                        ? const CircularProgressIndicator()
                        : ElevatedButton(
                          onPressed: () async {
                            bool success;
                            success = await authVM.login(
                              emailController.text,
                              passwordController.text,
                            );
                            if (success && mounted) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => JournalHomeScreen(),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(authVM.errorMessage ?? "Error"),
                                ),
                              );
                            }
                          },
                          child: Text('Login'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1E3A8A),
                            foregroundColor: const Color(0xFFFFFFF0),
                          ),
                        ),
              ),
              const SizedBox(height: 50, child: const SizedBox.shrink()),
              const Center(
                child: const Text(
                  'Don\'t you have account ?  ',
                  style: const TextStyle(
                    fontSize: 16,
                    color: const Color(0xFF000000),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
                height: 20,
                child: const SizedBox.shrink(),
              ),
              Center(
                child: InkWell(
                  onTap:
                      () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const JournalRegisterScreen(),
                        ),
                      ),
                  child: Text(
                    'Sign Up',
                    style: const TextStyle(
                      fontSize: 17,
                      color: const Color(0xFF1E3A8A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
    );
  }
}
