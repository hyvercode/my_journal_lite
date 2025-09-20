
import 'package:flutter/material.dart';
import '../models/journal_entry.dart';
import './journal_login_screen.dart';
import './journal_home_screen.dart';
import './journal_add_entry_screen.dart';

class JournalSplashScreen extends StatelessWidget {
  const JournalSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: const Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: const [const Icon(Icons.book, size: 80, color: const Color(0xFFFFFFFF)), const SizedBox(height: 16, child: const SizedBox.shrink()), const Text('MyJournal', style: const TextStyle(fontSize: 32, color: const Color(0xFFFFFFFF), fontWeight: FontWeight.bold, letterSpacing: 5)), const Text(' lite', style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, height: 1, letterSpacing: 2), textAlign: TextAlign.center)])), backgroundColor: const Color(0xFF1E3A8A));
  }
}
