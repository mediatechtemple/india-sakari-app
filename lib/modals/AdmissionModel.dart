class AdmissionModel {
  final String admissionUrl;
  final String slug;
  final String categoryName;
  final String created_at;
  final String type;

  AdmissionModel({required this.admissionUrl, required this.slug, required this.categoryName,required this.created_at,required this.type});

  // Factory method to convert JSON to Post object
  factory AdmissionModel.fromJson(Map<String, dynamic> json) {
    return AdmissionModel(
      admissionUrl: json['admissionUrl']?? "",
      slug: json['slug']?? "",
      categoryName: json['categoryName']?? "",
      created_at: json['created_at']?? "",
      type: json['type']?? "",
    );
  }

  @override
  String toString() {
    return 'AdmissionModel(admitCardUrl: $admissionUrl, slug: $slug, categoryName: $categoryName, created_at: $created_at, type: $type)';
  }
}