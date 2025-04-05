// old_paper_model.dart
class OldPaper {
  final String title;
  final String slug;
  final String? ogImage;
  final int id;

  OldPaper({
    required this.title,
    required this.slug,
    this.ogImage,
    required this.id,
  });

  // Factory method to create an OldPaperModel from JSON
  factory OldPaper.fromJson(Map<String, dynamic> json) {
    return OldPaper(
      title: json['title'],
      slug: json['slug'],
      ogImage: json['og_image'],  // Make sure the key is correct
      id: json['id'],
    );
  }
}
