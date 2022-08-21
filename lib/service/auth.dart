import 'package:firebase_auth/firebase_auth.dart';

import '../models/user.dart';
import 'database.dart';

class authservice {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //creat obj based on  firebase
  usera _userfromfirebase(User user) {
    if (user != null) {
      return usera(uid: user.uid);
    } else {
      return null!;
    }
  }

//stream
  Stream<usera?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userfromfirebase(user!));
  }

  // sign in anonemsly
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userfromfirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sing in with email pass
  Future signinwithemailpassword(String email, String password) async {
    try {
      UserCredential res = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = res.user;
      return _userfromfirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //reg email pass
  Future registerwithemailpassword(String email, String password) async {
    try {
      UserCredential res = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = res.user;
      print('object1');

      print(user != null);
      print(user?.uid);
      if (user != null) {
        await database();

        print('object');
        return _userfromfirebase(user);
      }
    } catch (e) {
      print('itserror');
      print(e.toString());
      return null;
    }
  }

  //sign out
  Future signout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
