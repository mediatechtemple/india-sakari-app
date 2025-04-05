class Jobs {
  final String jobUrl;
  final String slug;
  final String categoryName;

  Jobs({required this.jobUrl, required this.slug, required this.categoryName});

  // Factory method to convert JSON to Post object
  factory Jobs.fromJson(Map<String, dynamic> json) {
    return Jobs(
      jobUrl: json['jobUrl']?? "",
      slug: json['slug']?? "",
      categoryName: json['categoryName']?? "",
    );
  }
}