// videos_model.dart

class Video {
  final int id;
  final String title;
  final String description;
  final String thumbnail;
  final String videoUrl;
  final String courseType;
  final String isPaid;
  final String createdAt;
  final String updatedAt;

  Video({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnail,
    required this.videoUrl,
    required this.courseType,
    required this.isPaid,
    required this.createdAt,
    required this.updatedAt,
  });

  // Factory constructor to create a VideoModel from a JSON object
  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      thumbnail: json['thumbnail'],
      videoUrl: json['video_url'],
      courseType: json['course_type'],
      isPaid: json['is_paid'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  // Method to convert VideoModel to JSON (for API requests)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'thumbnail': thumbnail,
      'video_url': videoUrl,
      'course_type': courseType,
      'is_paid': isPaid,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
