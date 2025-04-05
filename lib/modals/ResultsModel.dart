class ResultsModal {
  final String resultUrl;
  final String slug;
  final String categoryName;
  final String created_at;
  final String type;

  ResultsModal({required this.resultUrl, required this.slug, required this.categoryName,required this.created_at,required this.type});

  // Factory method to convert JSON to Post object
  factory ResultsModal.fromJson(Map<String, dynamic> json) {
    return ResultsModal(
      resultUrl: json['resultUrl']?? "",
      slug: json['slug']?? "",
      categoryName: json['categoryName']?? "",
      created_at: json['created_at']?? "",
      type: json['type']?? "",
    );
  }

  @override
  String toString() {
    return 'ResultsModal(resultUrl: $resultUrl, slug: $slug, categoryName: $categoryName, created_at: $created_at, type: $type)';
  }
}