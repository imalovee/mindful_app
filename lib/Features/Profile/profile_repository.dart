import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mindful_app/Features/Profile/models/user_model.dart';

import 'models/model_x.dart';

class ProfileRepository{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

 Future<void>userDetails({required ModelX user})async{
  await FirebaseFirestore.instance.collection('users')
      .doc()
      .set(user.toJson());
 }

  Future<UserModel?> getDetails()async{
   final uid = FirebaseAuth.instance.currentUser?.uid;
   print(uid);
   if (uid == null) {
    throw Exception("No logged-in user found");
   }
   DocumentSnapshot<UserModel> documentSnapshot = await FirebaseFirestore.instance
       .collection('users').doc(uid)
       .withConverter<UserModel>(
       fromFirestore: (snapshot, options)=> UserModel.fromJson(snapshot.data()??{}),
       toFirestore: (userModel , options)=> userModel.toJson()
   ).get();
    print(documentSnapshot.data());
   return documentSnapshot.data();
  }


  Future<ModelX?> getUserDetails()async{
  try{
   final uid = FirebaseAuth.instance.currentUser?.uid;
   print(uid);
   if (uid == null) {
    throw Exception("No logged-in user found");
   }
   DocumentSnapshot document = await _firestore
       .collection('users')
       .doc(uid)
       .get();
   print('document ${document.data()}');
   if(document.exists){
    final data = document.data() as Map<String, dynamic>;
    return ModelX.fromJson(data);
   }
  }
  catch(e){
   log('Error fetching user data from Firestore: $e');
   return null;
  }
  return null;
 }




}