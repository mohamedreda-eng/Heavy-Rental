import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object
  UserModel _userFromFirebase(User user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<UserModel> get user {
    // return _auth.authStateChanges().map((User user) => _userFromFirebase(user));
    return _auth.authStateChanges().map(_userFromFirebase);
  }

  //sign in annon
  Future signInAnnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;

      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and pass

  //sign up with email and pass

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return null;
    }
  }
}
