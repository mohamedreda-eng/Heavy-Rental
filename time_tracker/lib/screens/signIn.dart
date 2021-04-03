import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/services/auth.dart';
import '../widgets/customEB.dart';

class SignIn extends StatelessWidget {
  const SignIn({
    Key key,
    @required this.onSignIn,
    @required this.auth,
  }) : super(key: key);

  final AuthBase auth;
  final void Function(User) onSignIn;

  Future<void> _signInAnnon() async {
    try {
      await auth.signInAnnon();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      await auth.signInWithGoogle();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Time Tracker',
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 50),
            CustomElevatedButton(
              btnName: 'Sign In with Google',
              color: Colors.white,
              imagePath: 'images/google-logo.png',
              onPressed: _signInWithGoogle,
            ),
            SizedBox(height: 10),
            CustomElevatedButton(
              btnName: 'Sign In with Facebook',
              color: Color(0xFF334092),
              textColor: Colors.white,
              imagePath: 'images/facebook-logo.png',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            CustomElevatedButton(
              btnName: 'Sign In with email',
              color: Colors.teal[700],
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(height: 15),
            Text(
              'or',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 15),
            CustomElevatedButton(
              btnName: 'Go anonymous',
              color: Colors.lime[300],
              textColor: Colors.black,
              onPressed: _signInAnnon,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
