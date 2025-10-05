import 'package:flutter/material.dart';
import 'screens/journal_splash_screen.dart';
import 'screens/journal_login_screen.dart';
import 'screens/journal_home_screen.dart';
import 'screens/journal_add_entry_screen.dart';
import 'screens/journal_register_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ognrfduwupjnzsucthyv.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9nbnJmZHV3dXBqbnpzdWN0aHl2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTgyOTA5MjYsImV4cCI6MjA3Mzg2NjkyNn0.H-DLcX0wNPDLMZrrlRb9_YwZC0vsuoFj9U0vRJqM_ug',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyJournal lite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6200EE),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/journal-splash',
      routes: {
        '/journal-splash': (context) => const JournalSplashScreen(),
        '/journal-login': (context) => const JournalLoginScreen(),
        '/journal-home': (context) => const JournalHomeScreen(),
        '/journal-add-entry': (context) => const JournalAddEntryScreen(),
        '/journal-login': (context) => const JournalRegisterScreen()
      },
    );
  }
}
