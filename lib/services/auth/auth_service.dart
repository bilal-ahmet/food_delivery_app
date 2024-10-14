import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // get instance of firebase outh
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // get current user
  User? getCurrentUser() {
    return firebaseAuth.currentUser;
  }

  // sign in
  Future<UserCredential> SignInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw (e.code);
    }
  }

  // sign up
  Future<UserCredential> SignUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw (e.code);
    }
  }

  // sign out
  Future<void> signOut() async{
    return await firebaseAuth.signOut();
  }
}
