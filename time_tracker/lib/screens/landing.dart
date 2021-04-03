import 'package:flutter/material.dart';
import 'package:time_tracker/screens/home.dart';
import 'package:time_tracker/screens/signIn.dart';
import 'package:time_tracker/services/auth.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({
    Key key,
    @required this.auth,
  }) : super(key: key);

  final AuthBase auth;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final user = snapshot.data;
          if (user == null) {
            return SignIn(
              auth: auth,
            );
          } else {
            return HomePage(
              auth: auth,
            );
          }
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
