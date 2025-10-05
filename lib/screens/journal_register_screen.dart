
import 'package:flutter/material.dart';
import '../models/journal_entry.dart';
import '../models/login.dart';
import '../models/register.dart';
import './journal_splash_screen.dart';
import './journal_login_screen.dart';
import './journal_home_screen.dart';
import './journal_add_entry_screen.dart';

class JournalRegisterScreen extends StatefulWidget {
  const JournalRegisterScreen({super.key});

  @override
  State<JournalRegisterScreen> createState() => _JournalRegisterScreenState();
}

class _JournalRegisterScreenState extends State<JournalRegisterScreen> {
  
  final _edc8680718054e5bA72f570551057ce3Controller = TextEditingController();
  final _9999cd9dCb304ceaA636Fe996367110aController = TextEditingController();
  final _f705b331A6904c84801a5171a7c494c8Controller = TextEditingController();
  final _c47b5f06F8ef4d89A5807befe0266b15Controller = TextEditingController();
  
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _edc8680718054e5bA72f570551057ce3Controller.dispose();
    _9999cd9dCb304ceaA636Fe996367110aController.dispose();
    _f705b331A6904c84801a5171a7c494c8Controller.dispose();
    _c47b5f06F8ef4d89A5807befe0266b15Controller.dispose();
    super.dispose();
  }

  

  

  

  

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [const SizedBox(height: 50, child: const SizedBox.shrink()), Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [const SizedBox(height: 10, child: const SizedBox.shrink()), Text('Register', style: const TextStyle(fontSize: 28, color: const Color(0xFF1E3A8A), fontWeight: FontWeight.bold)), const SizedBox(height: 24, child: const SizedBox.shrink()), TextField(controller: _edc8680718054e5bA72f570551057ce3Controller, onChanged: (value) => setState(() { email = value; }), style: TextStyle(color: const Color(0xFF000000)), decoration: InputDecoration(labelText: 'Email', fillColor: const Color(0xFF000000), border: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xFF000000), width: 1)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xFF000000), width: 1)))), const SizedBox(height: 16, child: const SizedBox.shrink()), TextField(controller: _9999cd9dCb304ceaA636Fe996367110aController, onChanged: (value) => setState(() { password = value; }), style: TextStyle(color: const Color(0xFF000000)), decoration: InputDecoration(labelText: 'Password', hintText: '*******', fillColor: const Color(0xFF000000), border: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xFF000000), width: 1))), obscureText: true), const SizedBox(height: 16, child: const SizedBox.shrink()), TextField(controller: _f705b331A6904c84801a5171a7c494c8Controller, onChanged: (value) => setState(() { name = value; }), style: TextStyle(color: const Color(0xFF000000)), decoration: InputDecoration(labelText: 'Fullname', fillColor: const Color(0xFF000000), border: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xFF000000), width: 1))), obscureText: true), const SizedBox(height: 16, child: const SizedBox.shrink()), TextField(controller: _c47b5f06F8ef4d89A5807befe0266b15Controller, onChanged: (value) => setState(() { phoneNumber = value; }), style: TextStyle(color: const Color(0xFF000000)), decoration: InputDecoration(labelText: 'Phone Number', fillColor: const Color(0xFF000000), border: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xFF000000), width: 1))), obscureText: true), const SizedBox(height: 24, child: const SizedBox.shrink()), SizedBox(width: 325, height: 50, child: ElevatedButton(onPressed: () {}, child: Text('Submit'), style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E3A8A), foregroundColor: const Color(0xFFFFFFF0))))]))])), backgroundColor: const Color(0xFFFFFFFF));
  }
}
