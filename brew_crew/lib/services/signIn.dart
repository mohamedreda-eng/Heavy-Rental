import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthServices _authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text('Sign in to Brew Crew'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Sign in annon'),
          onPressed: () async {
            dynamic result = await _authServices.signInAnnon();
            if (result == null) {
              print('error signing in ');
            } else {
              print('signed in ');
              print(result);
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}
