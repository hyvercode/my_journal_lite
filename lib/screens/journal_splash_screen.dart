
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/journal_entry.dart';
import './journal_login_screen.dart';
import './journal_home_screen.dart';
import './journal_add_entry_screen.dart';

class JournalSplashScreen extends StatefulWidget {
  const JournalSplashScreen({super.key});

  @override
  State<JournalSplashScreen> createState() => _JournalSplashScreenState();
}

class _JournalSplashScreenState extends State<JournalSplashScreen> {
  
  
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 3000), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const JournalLoginScreen()));
      }
    });
  }

  @override
  void dispose() {
    
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: const Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: const [const Icon(Icons.book, size: 80, color: const Color(0xFFFFFFFF)), const SizedBox(height: 16, child: const SizedBox.shrink()), const Text('MyJournal', style: const TextStyle(fontSize: 32, color: const Color(0xFFFFFFFF), fontWeight: FontWeight.bold, letterSpacing: 5)), const Text(' lite', style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, height: 1, letterSpacing: 2), textAlign: TextAlign.center), const SizedBox(width: 50, height: 100, child: const SizedBox.shrink()), const Text('Powered By HyverStudio', style: const TextStyle(fontSize: 12, color: const Color(0xFFFFFFFF), fontStyle: FontStyle.italic), textAlign: TextAlign.center)])), backgroundColor: const Color(0xFF1E3A8A));
  }
}
