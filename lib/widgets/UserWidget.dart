import 'package:flutter/material.dart';
import 'package:randomuser_project/models/User.dart';

class UserWidget extends StatelessWidget {
  final User user;
  UserWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const Text('User Widget'),
        Text(user.imageUrl),
        Text(user.firstName),
        Text(user.lastName),
        Text(user.email),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    ));
  }
}
