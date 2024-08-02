import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mindful_app/Features/Profile/models/user_model.dart';
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

  //save user to firestore
  Future<void> getEmail(String emailAddress)async {
    await FirebaseFirestore.instance.
    collection('user-email').add({
      'email': emailAddress,
    })
    ;
  }
}