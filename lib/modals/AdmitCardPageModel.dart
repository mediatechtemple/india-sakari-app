class AdmitCardPageModel {
  final String admitCardUrl;
  final String slug;
  final String categoryName;
  final String created_at;
  final String type;

  AdmitCardPageModel({
    required this.admitCardUrl,
    required this.slug,
    required this.categoryName,
    required this.created_at,
    required this.type,
  });

  // Factory method to convert JSON to JobModel object
  factory AdmitCardPageModel.fromJson(Map<String, dynamic> json) {
    return AdmitCardPageModel(
      admitCardUrl: json['admitCardUrl'] ?? "",
      slug: json['slug'] ?? "",
      categoryName: json['categoryName'] ?? "",
      created_at: json['created_at'] ?? "",
      type: json['type'] ?? "",
    );
  }

  @override
  String toString() {
    return 'AmitCardPageModel(jobUrl: $admitCardUrl, slug: $slug, categoryName: $categoryName, created_at: $created_at, type: $type)';
  }
}
