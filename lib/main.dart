import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/journal_splash_screen.dart';
import 'screens/journal_login_screen.dart';
import 'screens/journal_home_screen.dart';
import 'screens/journal_add_entry_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(url: dotenv.env['SUPABASE_URL'] ?? 'https://ognrfduwupjnzsucthyv.supabase.co', anonKey: dotenv.env['SUPABASE_ANON_KEY'] ?? 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9nbnJmZHV3dXBqbnpzdWN0aHl2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTgyOTA5MjYsImV4cCI6MjA3Mzg2NjkyNn0.H-DLcX0wNPDLMZrrlRb9_YwZC0vsuoFj9U0vRJqM_ug');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyJournal lite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6200EE),
          brightness: Brightness.dark,
        ),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: const JournalSplashScreen(),
    );
  }
}
