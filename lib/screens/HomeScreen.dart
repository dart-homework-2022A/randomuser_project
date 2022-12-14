import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:randomuser_project/models/User.dart';
import 'package:randomuser_project/services/randomuser.dart';
import 'package:randomuser_project/widgets/UserWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: FutureBuilder(
            // initialData: 'Initial Data',
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
              // Print the state of the snapshot
              print(snapshot.connectionState);

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return const Text('Error');
              } else if (snapshot.hasData) {
                return UserWidget(user: snapshot.data!);
              }
              return const Text('Home Screen');
            }),
      ),
    );
  }
}
