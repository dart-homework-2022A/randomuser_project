class User {
  final String firstName;
  final String lastName;
  final String email;
  final String imageUrl;

  User({
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
      firstName: json["name"]["first"],
      lastName: json["name"]["last"],
      imageUrl: json["picture"]["medium"],
      email: json["email"]);

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "imageUrl": imageUrl,
        "email": email,
      };
}
