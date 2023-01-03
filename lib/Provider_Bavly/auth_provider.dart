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
}
