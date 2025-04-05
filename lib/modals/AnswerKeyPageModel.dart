class AnswerKeyPageModel {
  final String answerKeyUrl;
  final String slug;
  final String categoryName;
  final String created_at;
  final String type;

  AnswerKeyPageModel({
    required this.answerKeyUrl,
    required this.slug,
    required this.categoryName,
    required this.created_at,
    required this.type,
  });

  // Factory method to convert JSON to JobModel object
  factory AnswerKeyPageModel.fromJson(Map<String, dynamic> json) {
    return AnswerKeyPageModel(
      answerKeyUrl: json['answerKeyUrl'] ?? "",
      slug: json['slug'] ?? "",
      categoryName: json['categoryName'] ?? "",
      created_at: json['created_at'] ?? "",
      type: json['type'] ?? "",
    );
  }

  @override
  String toString() {
    return 'AnswerKeyPageModel(jobUrl: $answerKeyUrl, slug: $slug, categoryName: $categoryName, created_at: $created_at, type: $type)';
  }
}
