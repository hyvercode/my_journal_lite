
import 'package:flutter/material.dart';
import '../models/journal_entry.dart';
import './my_journal_lite_journal_login_screen.dart';
import './my_journal_lite_journal_home_screen.dart';
import './my_journal_lite_journal_add_entry_screen.dart';

class MyJournalLiteJournalSplashScreen extends StatelessWidget {
  const MyJournalLiteJournalSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [const Icon(Icons.book, size: 80, color: const Color(0xFFFFFFFF)), const SizedBox(height: 16, child: const SizedBox.shrink()), const Text('MyJournal', style: const TextStyle(fontSize: 32, color: const Color(0xFFFFFFFF), fontWeight: FontWeight.bold, letterSpacing: 5)), InkWell(onTap: () {}, child: Text(' lite', style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, height: 1, letterSpacing: 2), textAlign: TextAlign.center))])), backgroundColor: const Color(0xFF1E3A8A));
  }
}
