// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class GoogleSignInProvider extends ChangeNotifier{
//   final googleSignIn = GoogleSignIn();

//   GoogleSignInAccount? _user;

//   GoogleSignInAccount get user => _user!;

//   Future googleLogin()async{
//     final googleUser = await googleSignIn.signIn();
//     // ignore: unnecessary_null_comparison
//     if (googleUser == null) return;
//     _user = googleUser;

//   final googleAuth = await googleUser.authentication;
  
//   final credential = GoogleAuthProvider.getCredential(
//     accessToken: googleAuth.accessToken,
//     idToken: googleAuth.idToken,
//     );
    
//     await FirebaseAuth.instance.signInWithCredential(credential);

//     notifyListeners();
//   }
// }