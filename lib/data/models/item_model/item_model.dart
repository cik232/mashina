class ItemModel {
  final String title;
  final String subtitle;
  final double progress;
  final bool isExpired;
  final DateTime startDate;
  final DateTime endDate;

  ItemModel({
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.isExpired,
    required this.startDate,
    required this.endDate,
  });
}