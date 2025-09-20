
import 'package:flutter/material.dart';
import '../models/journal_entry.dart';
import './my_journal_lite_journal_splash_screen.dart';
import './my_journal_lite_journal_home_screen.dart';
import './my_journal_lite_journal_add_entry_screen.dart';

class MyJournalLiteJournalLoginScreen extends StatefulWidget {
  const MyJournalLiteJournalLoginScreen({super.key});

  @override
  State<MyJournalLiteJournalLoginScreen> createState() => _MyJournalLiteJournalLoginScreenState();
}

class _MyJournalLiteJournalLoginScreenState extends State<MyJournalLiteJournalLoginScreen> {
  
  final _d503961c586c4b43872cB06a22d98891Controller = TextEditingController();
  final _e6b1359746bf42de948970711c7ce1ccController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _d503961c586c4b43872cB06a22d98891Controller.dispose();
    _e6b1359746bf42de948970711c7ce1ccController.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(padding: const EdgeInsets.all(24), child: const Text('Welcome Back', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold))), backgroundColor: const Color(0xFFFFFFFF));
  }
}
