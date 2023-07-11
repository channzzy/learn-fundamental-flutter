class User {
  final String id;
  final String name;
  final String address;
  final List<String> hobbies;
  final SocialMedia socialMedia;

  User(
      {required this.id,
      required this.name,
      required this.address,
      required this.hobbies,
      required this.socialMedia});

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        hobbies: List<String>.from(json["hobbies"].map((x) => x)),
        socialMedia: SocialMedia.fromJson(json['socialMedia']),
      );
}

class SocialMedia {
  final String instagram;
  final String twitter;

  SocialMedia({required this.instagram, required this.twitter});

  factory SocialMedia.fromJson(Map<String, dynamic> json) =>
      SocialMedia(instagram: json['instagram'], twitter: json['twitter']);
}
