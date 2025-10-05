
import 'package:flutter/material.dart';
import '../models/journal_entry.dart';
import '../models/login.dart';
import '../models/register.dart';
import './journal_splash_screen.dart';
import './journal_login_screen.dart';
import './journal_home_screen.dart';
import './journal_register_screen.dart';

class JournalAddEntryScreen extends StatefulWidget {
  const JournalAddEntryScreen({super.key});

  @override
  State<JournalAddEntryScreen> createState() => _JournalAddEntryScreenState();
}

class _JournalAddEntryScreenState extends State<JournalAddEntryScreen> {
  
  final _2fc7260d3f554efaB31c999ea41c2316Controller = TextEditingController();
  final _ab0dc6e88c154b1e85cb09a3d2335a66Controller = TextEditingController();
  
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _2fc7260d3f554efaB31c999ea41c2316Controller.dispose();
    _ab0dc6e88c154b1e85cb09a3d2335a66Controller.dispose();
    super.dispose();
  }

  

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Add Entry'), backgroundColor: const Color(0xFFFFFFFF), foregroundColor: const Color(0xFF1E3A8A)), body: Padding(padding: const EdgeInsets.all(16), child: Column(children: [TextField(controller: _2fc7260d3f554efaB31c999ea41c2316Controller, style: TextStyle(color: const Color(0xFF000000)), decoration: InputDecoration(labelText: 'Description', fillColor: const Color(0xFF000000), border: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xFF000000), width: 1)))), const SizedBox(height: 16, child: const SizedBox.shrink()), TextField(controller: _ab0dc6e88c154b1e85cb09a3d2335a66Controller, style: TextStyle(color: const Color(0xFF000000)), decoration: InputDecoration(labelText: 'Amount', fillColor: const Color(0xFF000000), border: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xFF000000), width: 1)))), const SizedBox(height: 30, child: const SizedBox.shrink()), Row(children: [Text('Type', style: const TextStyle(color: const Color(0xFF1E3A8A), fontWeight: FontWeight.bold))]), const SizedBox(height: 10, child: const SizedBox.shrink()), Row(children: [Radio(value: 'Income', groupValue: 'Income', activeColor: const Color(0xFF1E3A8A)), Text('Income', style: const TextStyle(color: const Color(0xFF000000))), Radio(value: 'Expense', groupValue: 'Income', activeColor: const Color(0xFF1E3A8A)), Text('Expense', style: const TextStyle(color: const Color(0xFF000000)))]), const SizedBox(height: 24, child: const SizedBox.shrink()), SizedBox(width: 340, height: 50, child: ElevatedButton(onPressed: () {}, child: Text('Save Entry'), style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E3A8A), foregroundColor: const Color(0xFFFFFFF0))))])), backgroundColor: const Color(0xFFFFFFFF));
  }
}
