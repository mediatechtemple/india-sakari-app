class AnswerKeyModel {
  final String answerKeyUrl;
  final String slug;
  final String categoryName;
  final String created_at;
  final String type;

  AnswerKeyModel({required this.answerKeyUrl, required this.slug, required this.categoryName,required this.created_at,required this.type});

  // Factory method to convert JSON to Post object
  factory AnswerKeyModel.fromJson(Map<String, dynamic> json) {
    return AnswerKeyModel(
      answerKeyUrl: json['answerKeyUrl']?? "",
      slug: json['slug']?? "",
      categoryName: json['categoryName']?? "",
      created_at: json['created_at']?? "",
      type: json['type']?? "",
    );
  }

  @override
  String toString() {
    return 'ResultsModal(answerKeyUrl: $answerKeyUrl, slug: $slug, categoryName: $categoryName, created_at: $created_at, type: $type)';
  }
}