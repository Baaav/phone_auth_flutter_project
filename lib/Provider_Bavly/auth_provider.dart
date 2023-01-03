import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth_Provider_Bavly extends ChangeNotifier {
  bool _isSignedIn = false;
  bool get isSignedIn => isSignedIn;

  Auth_Provider_Bavly() {
    checkSignIn();
  }

  void checkSignIn() async {
    final SharedPreferences s = await SharedPreferences.getInstance();
    _isSignedIn = s.getBool("is_signesin") ?? false;
    notifyListeners();
  }

  void signInWithPhone(BuildContext context, String phoneNumber) async {
    try{} on FirebaseAuthException catch{e}{
      
    }
  }
}
