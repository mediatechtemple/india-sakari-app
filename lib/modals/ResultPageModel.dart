class ResultPageModel {
  final String resultUrl;
  final String slug;
  final String categoryName;
  final String created_at;
  final String type;

  ResultPageModel({
    required this.resultUrl,
    required this.slug,
    required this.categoryName,
    required this.created_at,
    required this.type,
  });

  // Factory method to convert JSON to JobModel object
  factory ResultPageModel.fromJson(Map<String, dynamic> json) {
    return ResultPageModel(
      resultUrl: json['resultUrl'] ?? "",
      slug: json['slug'] ?? "",
      categoryName: json['categoryName'] ?? "",
      created_at: json['created_at'] ?? "",
      type: json['type'] ?? "",
    );
  }

  @override
  String toString() {
    return 'ResultPageModel(resultUrl: $resultUrl, slug: $slug, categoryName: $categoryName, created_at: $created_at, type: $type)';
  }
}
