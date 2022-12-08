class User {
  final String firstName;
  final String lastName;
  final String email;
  final String image;

  User(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.image});

  factory User.fromJson(Map<String, dynamic> json) => User(
      firstName: json["name"]["first"],
      lastName: json["name"]["last"],
      email: json["email"],
      image: json['picture']['large']);

  Map<String, dynamic> toJson() =>
      {"firstName": firstName, "lastName": lastName, "email": email,'image':image};
}
