class SocialMediaPlatform {
  final String platformName;
  final String url;
  final String socialIcon;
  final bool isActive;

  SocialMediaPlatform({
    required this.platformName,
    required this.url,
    required this.socialIcon,
    required this.isActive,
  });

  factory SocialMediaPlatform.fromJson(Map<String, dynamic> json) {
    return SocialMediaPlatform(
      platformName: json['platformName'] ?? "",
      url: json['url'] ?? "",
      socialIcon: json['socialIcon'] ?? "",
      isActive: json['isActive'] ?? "",
    );
  }
}
