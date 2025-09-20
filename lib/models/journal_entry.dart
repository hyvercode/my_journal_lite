class JournalEntry {
  final String? description;
  final double? amount;
  final String? type;
  final String? date;

  JournalEntry({this.description, this.amount, this.type, this.date});

  factory JournalEntry.fromJson(Map<String, dynamic> json) {
    return JournalEntry(
      description: json['description'],
      amount: json['amount'],
      type: json['type'],
      date: json['date']
    );
  }
}
