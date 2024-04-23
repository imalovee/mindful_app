import 'package:firebase_auth/firebase_auth.dart';
class SignupRepository {
  var auth = FirebaseAuth.instance;

  Future<void> signupUser({
    required String email,
    required String password,
})async{
    auth.createUserWithEmailAndPassword(
        email: email,
        password: password);
  }
}