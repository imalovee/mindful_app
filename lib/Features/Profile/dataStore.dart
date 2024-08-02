

import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class StoreData{
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

  Future<String> saveData({required Uint8List file})async{
    String resp = 'Some error occurred';
    try{
      String imageUrl = await upLoadImage('Profile image', file);
     _firestore.collection('users').add({
       'imageLink': imageUrl
     });
     resp = 'success';
    }
    catch(err){
      resp = err.toString();
    }
    return resp;
  }
}