import 'package:flutter/material.dart';
import 'package:my_journal_lite/screens/journal_home_screen.dart';
import 'package:my_journal_lite/screens/login_screen.dart';
import 'package:provider/provider.dart';
import '../viewmodels/auth_viewmodel.dart';

class AuthCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authVM = Provider.of<AuthViewModel>(context);
    return authVM.isLoggedIn ? JournalHomeScreen() : LoginScreen();
  }
}
