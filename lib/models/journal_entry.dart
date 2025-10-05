
class JournalEntry {
  final String description;
  final double amount;
  final String type;
  final String date;
  final String userId;
  final String createdBy;
  final String createdAt;

  JournalEntry({
    required this.description,
    required this.amount,
    required this.type,
    required this.date,
    required this.userId,
    required this.createdBy,
    required this.createdAt,
  });

  factory JournalEntry.fromJson(Map<String, dynamic> json) {
    return JournalEntry(
      description: json['description'] as String? ?? '',
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      type: json['type'] as String? ?? '',
      date: json['date'] as String? ?? '',
      userId: json['user_id'] as String? ?? '',
      createdBy: json['created_by'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
    );
  }
}
