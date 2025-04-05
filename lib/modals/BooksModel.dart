class Book {
  final String title;
  final String slug;
  final String? coverImageUrl;
  final int id;

  Book({
    required this.title,
    required this.slug,
    this.coverImageUrl,
    required this.id,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'],
      slug: json['slug'],
      coverImageUrl: json['coverImageUrl'],
      id: json['id'],
    );
  }
}
