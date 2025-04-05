class Notes {
  final String title;
  final String slug;
  final String ogImage;
  final int id;

  // Constructor to initialize the fields
  Notes({
    required this.title,
    required this.slug,
    required this.ogImage,
    required this.id,
  });

  // Factory constructor to create a NotesModel from JSON data
  factory Notes.fromJson(Map<String, dynamic> json) {
    return Notes(
      title: json['title'],
      slug: json['slug'],
      ogImage: json['og_image'],
      id: json['id'],
    );
  }

  // Method to convert the NotesModel object to JSON format
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'slug': slug,
      'og_image': ogImage,
      'id': id,
    };
  }
}
