import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthServices _authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brew Crew'),
        centerTitle: true,
        backgroundColor: Colors.brown,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () async {
              await _authServices.signOut();
            },
            child: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
