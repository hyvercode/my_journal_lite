class JournalEntry {
  final String? description;
  final double? amount;
  final String? type;
  final String? date;
  final String? userId;
  final String? createdBy;
  final String? createdAt;

  JournalEntry({this.description, this.amount, this.type, this.date, this.userId, this.createdBy, this.createdAt});

  factory JournalEntry.fromJson(Map<String, dynamic> json) {
    return JournalEntry(
      description: json['description'],
      amount: json['amount'],
      type: json['type'],
      date: json['date'],
      userId: json['user_id'],
      createdBy: json['created_by'],
      createdAt: json['created_at']
    );
  }
}
