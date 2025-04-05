class AdmissionPageModel {
  final String admissionUrl;
  final String slug;
  final String categoryName;
  final String created_at;
  final String type;

  // New fields
  final String location;
  final String department;
  final String passedEducation;
  final String currentCourse;
  final String university;

  AdmissionPageModel({
    required this.admissionUrl,
    required this.slug,
    required this.categoryName,
    required this.created_at,
    required this.type,
    required this.location,
    required this.department,
    required this.passedEducation,
    required this.currentCourse,
    required this.university,
  });

  // Factory method to convert JSON to AdmissionPageModel object
  factory AdmissionPageModel.fromJson(Map<String, dynamic> json) {
    return AdmissionPageModel(
      admissionUrl: json['admissionUrl'] ?? "",
      slug: json['slug'] ?? "",
      categoryName: json['categoryName'] ?? "",
      created_at: json['created_at'] ?? "",
      type: json['type'] ?? "",
      location: json['location'] ?? "",  // Added location field
      department: json['department'] ?? "", // Added department field
      passedEducation: json['passedEducation'] ?? "", // Added passedEducation field
      currentCourse: json['currentCourse'] ?? "",  // Added currentCourse field
      university: json['university'] ?? "", // Added university field
    );
  }

  @override
  String toString() {
    return 'AdmissionPageModel(admissionUrl: $admissionUrl, slug: $slug, categoryName: $categoryName, created_at: $created_at, type: $type, location: $location, department: $department, passedEducation: $passedEducation, currentCourse: $currentCourse, university: $university)';
  }
}
