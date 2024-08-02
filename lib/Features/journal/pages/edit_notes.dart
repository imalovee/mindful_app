import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mindful_app/Features/journal/firestore.dart';

class EditNotes extends StatefulWidget {
  const EditNotes({super.key, required this.docId});
    final String docId;
  @override
  State<EditNotes> createState() => _EditNotesState();
}

class _EditNotesState extends State<EditNotes> {
  FirestoreServices _firestoreServices = FirestoreServices();
  TextEditingController editTextController = TextEditingController();
  TextEditingController editTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       elevation: 0,
       actions: [
         TextButton(
             onPressed: ()async{
              await _firestoreServices.updateNotes(widget.docId,
                   editTextController.text,
                   editTitleController.text);
              //clear text-field
               editTextController.clear();
               editTitleController.clear();
             },
             child: Text('Done',
             style: TextStyle(
                 color: Color(0xFFCC400C),
                 fontWeight: FontWeight.w800
             ),)
         )
       ],
     ),
     body: StreamBuilder<DocumentSnapshot>(
       stream: _firestoreServices.getNotesbyId(widget.docId),
       builder: (context, snapshot){
         if (!snapshot.hasData) {
           return Center(
             child: CircularProgressIndicator(),
           );
         }
         var noteData = snapshot.data!.data() as Map<String, dynamic>;
         editTextController.text = noteData['note'] ?? '';
         editTitleController.text = noteData['title'] ?? '';

         return Padding(padding: EdgeInsets.all(16),
           child: Column(
             children: [
               TextField(
                 controller: editTitleController,
                 decoration: InputDecoration(
                     hintText: 'Title',
                     filled: true,
                     fillColor: Colors.grey.shade300
                 ),
               ),
               SizedBox(height: 8,),
               TextField(
                 controller: editTextController,
                 maxLines: 5,
                 decoration: InputDecoration(
                   hintText: 'Add note here',
                 ),
               ),
             ],
           ),);
       },

     ),
    );
  }
}
