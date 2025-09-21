import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/journal_splash_screen.dart';
import 'screens/journal_login_screen.dart';
import 'screens/journal_home_screen.dart';
import 'screens/journal_add_entry_screen.dart';
import 'screens/journal_register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(url: dotenv.env['SUPABASE_URL'] ?? '', anonKey: dotenv.env['SUPABASE_ANON_KEY'] ?? '');
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
