

import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class StoreData{
    final userID = FirebaseAuth.instance.currentUser?.uid;
  //firebase_storage method
  Future<String> upLoadImage(String childName, Uint8List file)async{
    // Create a reference to the location you want to upload to in Firebase Storage
    Reference ref = await _firebaseStorage.ref().child(childName);
    // Upload the file data
    UploadTask uploadTask = ref.putData(file);
    // Wait for the upload to complete and get the download URL
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  Future<String> saveData({required Uint8List file, required String uid})async{
    String resp = 'Some error occurred';
    try{
      String imageUrl = await upLoadImage('Profile image', file);
     _firestore.collection('user_image').doc(userID).set({
       'imageLink': imageUrl
     });
     resp = imageUrl;
    }
    catch(err){
      resp = err.toString();
    }
    return resp;
  }


  Future<String> getImageUrl(String uid)async{
    try{
      DocumentSnapshot documentSnapshot = await FirebaseFirestore
          .instance
          .collection('user_image').doc(userID).get();
      if(documentSnapshot.exists){
        return documentSnapshot['imageLink'];
      }else{
        return '';
      }
    }catch(e){
      print('Error fetching image URL: $e');
    }
    return '';

  }
}