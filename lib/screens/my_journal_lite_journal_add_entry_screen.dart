
import 'package:flutter/material.dart';
import '../models/journal_entry.dart';
import './my_journal_lite_journal_splash_screen.dart';
import './my_journal_lite_journal_login_screen.dart';
import './my_journal_lite_journal_home_screen.dart';

class MyJournalLiteJournalAddEntryScreen extends StatefulWidget {
  const MyJournalLiteJournalAddEntryScreen({super.key});

  @override
  State<MyJournalLiteJournalAddEntryScreen> createState() => _MyJournalLiteJournalAddEntryScreenState();
}

class _MyJournalLiteJournalAddEntryScreenState extends State<MyJournalLiteJournalAddEntryScreen> {
  
  final _2fc7260d3f554efaB31c999ea41c2316Controller = TextEditingController();
  final _ab0dc6e88c154b1e85cb09a3d2335a66Controller = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _2fc7260d3f554efaB31c999ea41c2316Controller.dispose();
    _ab0dc6e88c154b1e85cb09a3d2335a66Controller.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Add Entry'), backgroundColor: const Color(0xFFFFFFFF), foregroundColor: const Color(0xFF1E3A8A)), body: Padding(padding: const EdgeInsets.all(16), child: Column(children: [TextField(controller: _2fc7260d3f554efaB31c999ea41c2316Controller, decoration: InputDecoration(labelText: 'Description')), const SizedBox(height: 16, child: const SizedBox.shrink()), TextField(controller: _ab0dc6e88c154b1e85cb09a3d2335a66Controller, decoration: InputDecoration(labelText: 'Amount')), const SizedBox(height: 24, child: const SizedBox.shrink()), const Text('Type', style: const TextStyle(color: const Color(0xFF1E3A8A))), Row(children: [Radio(value: 'Income', groupValue: 'Income'), const Text('Income', style: const TextStyle(color: const Color(0xFF1E3A8A))), Radio(value: 'Expense', groupValue: 'Income'), const Text('Expense', style: const TextStyle(color: const Color(0xFF1E3A8A)))]), const SizedBox(height: 24, child: const SizedBox.shrink()), SizedBox(height: 50, child: ElevatedButton(onPressed: () {}, child: Text('Save Entry'), style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E3A8A))))])), backgroundColor: const Color(0xFFFFFFFF));
  }
}
