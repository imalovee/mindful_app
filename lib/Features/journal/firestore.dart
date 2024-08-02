
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices{
  final CollectionReference notes = FirebaseFirestore.instance.collection('notes');

//save data in database
  Future<void> addNotes(String note, String title) {
    return  notes.add({
      'title': title,
      'note': note,
      'timestamp': Timestamp.now(),
    });
  }

  //read data from database
  Stream<QuerySnapshot> getNotesStream(){
    final savedNotes = notes.orderBy('timestamp', descending: true).snapshots();
    return savedNotes;
}

   Stream<DocumentSnapshot<Object?>>getNotesbyId(String id){
     final userNotes = notes.doc(id).snapshots();
     return userNotes;
   }

  //edit-notes
  Future<void> updateNotes(String docID, String newNote, String newTitle)async{
    return await notes.doc(docID).update({
      'title': newTitle,
      'note': newNote,
      'timestamp': Timestamp.now(),
    });
  }

  Future<void>deleteNotes(String docId)async{
    return await notes.doc(docId).delete();
  }
}