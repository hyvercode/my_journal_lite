
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import '../models/journal_entry.dart';
import './journal_splash_screen.dart';
import './journal_login_screen.dart';
import './journal_add_entry_screen.dart';

class JournalHomeScreen extends StatefulWidget {
  const JournalHomeScreen({super.key});

  @override
  State<JournalHomeScreen> createState() => _JournalHomeScreenState();
}

class _JournalHomeScreenState extends State<JournalHomeScreen> {
  
  
  bool _isLoading = false;

  @override
  void dispose() {
    
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Dashboard'), backgroundColor: const Color(0xFFFFFFFF), foregroundColor: const Color(0xFF1E3A8A)), body: Column(children: [Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), child: Padding(padding: const EdgeInsets.all(16), child: const Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: const [const Column(crossAxisAlignment: CrossAxisAlignment.center, children: const [const Text('Income', style: const TextStyle(color: const Color(0xFF6B7280))), const Text('\$1,200.00', style: const TextStyle(fontSize: 20, color: const Color(0xFF10B981), fontWeight: FontWeight.bold))]), const Column(crossAxisAlignment: CrossAxisAlignment.center, children: const [const Text('Expense', style: const TextStyle(color: const Color(0xFF6B7280))), const Text('\$450.50', style: const TextStyle(fontSize: 20, color: const Color(0xFFEF4444), fontWeight: FontWeight.bold))])])), margin: const EdgeInsets.all(16), color: const Color(0xFFFFFFFF), shadowColor: const Color(0xFF1E3A8A)), const Padding(padding: const EdgeInsets.all(16), child: const Text('Recent Transactions', style: const TextStyle(fontSize: 24, color: const Color(0xFF1E3A8A), fontWeight: FontWeight.bold))), const Expanded(child: const SizedBox.shrink())]), floatingActionButton: FloatingActionButton(child: const Icon(Icons.add), onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JournalAddEntryScreen())), tooltip: 'New'), backgroundColor: const Color(0xFFF3F4F6));
  }
}
