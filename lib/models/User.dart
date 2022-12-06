class User {
  final String firstName;
  final String lastName;
  final String email;

  User({required this.firstName, required this.lastName, required this.email});

  factory User.fromJson(Map<String, dynamic> json) => User(
      firstName: json["name"]["first"],
      lastName: json["name"]["last"],
      email: json["email"]);

  Map<String, dynamic> toJson() =>
      {"firstName": firstName, "lastName": lastName, "email": email};
}
