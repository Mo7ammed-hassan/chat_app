// ignore_for_file: avoid_print, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth firebaseAuth;

  AuthServices({required this.firebaseAuth});

  // Register Method ..
  Future<void> registerMethod({
    required String email,
    required String password,
  }) async {
    UserCredential userCredential =
        await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // Login Method ..
  Future<void> loginMethod({
    required String email,
    required String password,
  }) async {
    UserCredential userCredential =
        await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // sign out methods
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}
