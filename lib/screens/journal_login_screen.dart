
import 'package:flutter/material.dart';
import '../models/journal_entry.dart';
import './journal_splash_screen.dart';
import './journal_home_screen.dart';
import './journal_add_entry_screen.dart';

class JournalLoginScreen extends StatefulWidget {
  const JournalLoginScreen({super.key});

  @override
  State<JournalLoginScreen> createState() => _JournalLoginScreenState();
}

class _JournalLoginScreenState extends State<JournalLoginScreen> {
  
  final _d503961c586c4b43872cB06a22d98891Controller = TextEditingController();
  final _e6b1359746bf42de948970711c7ce1ccController = TextEditingController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _d503961c586c4b43872cB06a22d98891Controller.dispose();
    _e6b1359746bf42de948970711c7ce1ccController.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(padding: const EdgeInsets.all(24), child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [const SizedBox(height: 10, child: const SizedBox.shrink()), const Text('Welcome Back', style: const TextStyle(fontSize: 28, color: const Color(0xFF1E3A8A), fontWeight: FontWeight.bold)), const SizedBox(height: 24, child: const SizedBox.shrink()), TextField(controller: _d503961c586c4b43872cB06a22d98891Controller, style: TextStyle(color: const Color(0xFF000000)), decoration: InputDecoration(labelText: 'Email', fillColor: const Color(0xFF000000), border: const OutlineInputBorder(borderSide: BorderSide(color: const Color(0xFF000000), width: 1)), focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: const Color(0xFF000000), width: 1)))), const SizedBox(height: 16, child: const SizedBox.shrink()), TextField(controller: _e6b1359746bf42de948970711c7ce1ccController, style: TextStyle(color: const Color(0xFF000000)), decoration: InputDecoration(labelText: 'Password', hintText: '*******', fillColor: const Color(0xFF000000), border: const OutlineInputBorder(borderSide: BorderSide(color: const Color(0xFF000000), width: 1))), obscureText: true), const SizedBox(height: 24, child: const SizedBox.shrink()), SizedBox(height: 50, child: ElevatedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JournalHomeScreen())), child: Text('Login'), style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E3A8A), foregroundColor: const Color(0xFFFFFFF0))))]))), backgroundColor: const Color(0xFFFFFFFF));
  }
}
