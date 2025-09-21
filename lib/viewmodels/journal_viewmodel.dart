import 'package:flutter/material.dart';
import 'package:my_journal_lite/models/journal_entry.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class JournalViewModel extends ChangeNotifier {
  final supabase = Supabase.instance.client;
  bool isLoading = false;
  List<JournalEntry> messages = [];

  Future<void> fetchJournal() async {
    isLoading = true;
    notifyListeners();

    final response = await supabase
        .from('journal')
        .select('*')
        .order('created_at', ascending: false);

    messages = (response as List)
        .map((json) => JournalEntry.fromJson(json))
        .toList();

    isLoading = false;
    notifyListeners();
  }

  Future<void> addJournal(String text) async {
    final user = supabase.auth.currentUser;
    if (user == null) return;

    await supabase.from('journal').insert({
      'user_id': user.id,
      'message': text,
    });

    await fetchJournal();
  }

  Future<void> deleteJournal(int id) async {
    await supabase.from('journal').delete().eq('id', id);
    await fetchJournal();
  }

  Future<void> updateJournal(int id, String newText) async {
    await supabase.from('journal').update({
      'message': newText,
    }).eq('id', id);

    await fetchJournal();
  }
}
