import 'package:flutter/material.dart';
import 'package:mindful_app/Features/journal/firestore.dart';
class AddNotes extends StatefulWidget {
  const AddNotes( {super.key} );

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  TextEditingController textController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  FirestoreServices firestoreServices = FirestoreServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          TextButton(
              onPressed: (){
                  firestoreServices.addNotes(textController.text, titleController.text);
                textController.clear();
                titleController.clear();
                //Navigator.pop(context);
              },
              child: Text('Save',
              style: TextStyle(
                color: Color(0xFFCC400C),
                fontWeight: FontWeight.w800
              ),)
          )
        ],
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              hintText: 'Title',
              filled: true,
              fillColor: Colors.grey.shade300
            ),
          ),
          SizedBox(height: 8,),
          TextField(

            controller: textController,
            maxLines: 5,
            decoration: InputDecoration(
              hintText: 'Add note here',
            ),
          ),
        ],
      ),),
    );
  }
}
