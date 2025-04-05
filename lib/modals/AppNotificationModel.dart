class AppNotificationModel {
  final int id;
  final String title;
  final String content;
  final String? file;
  final String createdAt;
  final String updatedAt;

  AppNotificationModel({
    required this.id,
    required this.title,
    required this.content,
    this.file,
    required this.createdAt,
    required this.updatedAt,
  });

  // Factory constructor to create a Notification from a JSON object
  factory AppNotificationModel.fromJson(Map<String, dynamic> json) {
    return AppNotificationModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      file: json['file'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}