class JobsModel {
  final String jobUrl;
  final String slug;
  final String categoryName;
  final String created_at;
  final String type;
  final String title;       // Add title field
  final String department;  // Add department field
  final String education;   // Add education field
  final bool isArchived;

  // Constructor with all required fields
  JobsModel({
    required this.jobUrl,
    required this.slug,
    required this.categoryName,
    required this.created_at,
    required this.type,
    required this.title,      // Initialize title
    required this.department, // Initialize department
    required this.education,  // Initialize education
    required this.isArchived, // Initialize isArchived
  });

  // Factory method to convert JSON to JobsModel object
  factory JobsModel.fromJson(Map<String, dynamic> json) {
    return JobsModel(
      jobUrl: json['jobUrl'] ?? "",            // Default to empty string if null
      slug: json['slug'] ?? "",                // Default to empty string if null
      categoryName: json['categoryName'] ?? "",// Default to empty string if null
      created_at: json['created_at'] ?? "",    // Default to empty string if null
      type: json['type'] ?? "",                // Default to empty string if null
      title: json['title'] ?? "",              // Default to empty string if null
      department: json['department'] ?? "",    // Default to empty string if null
      education: json['education'] ?? "",      // Default to empty string if null
      isArchived: json['isArchived'] ?? false, // Default to false if null
    );
  }

  @override
  String toString() {
    return 'JobsModel(jobUrl: $jobUrl, slug: $slug, categoryName: $categoryName, created_at: $created_at, type: $type, title: $title, department: $department, education: $education, isArchived: $isArchived)';
  }
}
