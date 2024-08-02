import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/journal/firestore.dart';
import 'package:mindful_app/Features/journal/pages/edit_notes.dart';
import 'add_notes.dart';

FirestoreServices _firestore = FirestoreServices();
class Journal extends StatefulWidget {
  const Journal({super.key});

  @override
  State<Journal> createState() => _JournalState();
}

class _JournalState extends State<Journal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("My Journal"),
        centerTitle: true,
        elevation: 0,

      ),
      body: ListView(
        padding: EdgeInsets.all(16.sp),
        children: [

          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: "Search Journal Entry",
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none
            ),
          ),
          SizedBox(height: 20.sp,),
          NotesStream()
            ],
          ),

      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
          backgroundColor: Color(0xFF4C51C1),
          onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context){
                    return AddNotes();
                  }));
          },
      child: Icon(Icons.add),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class NotesStream extends StatelessWidget {
  const NotesStream({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.getNotesStream() ,
      builder: (context, snapshot){
        if(!snapshot.hasData){
          return CircularProgressIndicator(
            backgroundColor: Colors.blue,
          );
        }
        final savednotes = snapshot.data?.docs ?? [];
        List<Widget> noteWidgets = [];
        for(var note in savednotes){
          //get docId
          String documentID = note.id;
          //get individual notes
          final noteData = note.data() as Map<String, dynamic>;
         String noteText = noteData['note']  ?? '';
         String noteTitle = noteData['title'] ?? '';

          // Create a widget for each note and add to list
          final noteWidget = StreamDesign(text: noteText,
            title: noteTitle,
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context){
                                return EditNotes(docId: documentID,);
                              }));
                    },
                    icon: Icon(Icons.edit)),
                IconButton(
                    onPressed: (){
                      _firestore.deleteNotes(documentID);
                    },
                    icon: Icon(Icons.delete)),
              ],
            ),
          );

          noteWidgets.add(noteWidget);
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: noteWidgets
        );
      }

    );
  }
}


class StreamDesign extends StatelessWidget {
  const StreamDesign({super.key, required this.text, required this.title, required this.icon});
  final String text;
  final String title;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
        style: TextStyle(
            color: Color(0xFFCC400C),
            fontWeight: FontWeight.w800
        ),),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.sp)
          ),
          child: ListTile(
                  title: Text(title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800
                ),
              ),
              subtitle: Text(text,
                ),
            trailing: icon
          ) ,
        ),
      ],
    );
  }
}
