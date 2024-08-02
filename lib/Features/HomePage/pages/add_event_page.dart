//import 'dart:ffi';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../event_data/event_class.dart';
import '../event_data/intl.dart';

class AddEvents extends StatefulWidget {
  // create an instance of the event class.
  final Event? event;
  const AddEvents({super.key, this.event});

  @override
  State<AddEvents> createState() => _AddEventsState();
}

class _AddEventsState extends State<AddEvents> {
  //declare the date variables to be initialized later
  late DateTime fromDate;
  late DateTime toDate;
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  bool isAllDay = false;

//create an init function to initialise the date variables
  @override
  void initState(){
    super.initState();
    if(widget.event == null){
      fromDate = DateTime.now();
      toDate= DateTime.now().add(Duration(hours: 2));
    }
  }
// create a dispose function to dispose the controller
  @override
  void dispose(){
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Color(0xFF4C51C1),
        // leading: IconButton(
        //     onPressed: (){},
        //     icon: Icon(Icons.cancel_outlined)),
        actions: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white
            ),
              onPressed: saveForm,
              icon: Icon(Icons.check),
              label: Text('Save'))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildTitle(),
              SizedBox(height: 10,),
              buildDateTimePickers(),
              SizedBox(height: 10,),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color(0xFF4C51C1),
                      value: isAllDay,
                      onChanged: ( newValue){
                        setState(() {
                          isAllDay = newValue!;
                        });
                      }
                      ),
                  Text('All Day Event',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),)
                ],
              ),
          SizedBox(height: 20.sp,),
          TextFormField(
            style: TextStyle(fontSize: 22),
            controller: descriptionController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.grey
                  )
                ),
                hintText: 'Add details'
            ),
            maxLines: 3,
            onFieldSubmitted: (_) => saveForm,
            validator: (value){
              value != null && value.isEmpty ?'field cannot be empty' : null;
            },
          )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTitle(){
    return TextFormField(
      style: TextStyle(fontSize: 22.sp),
      controller: titleController,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: 'Add Title'
      ),
      onFieldSubmitted: (_){},
      validator: (title){
        title != null && title.isEmpty ?'Title cannot be empty' : null;
      },
    );
  }

  Widget buildDateTimePickers(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //the FROM dateTime picker
        Text('FROM',style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        Row(
          children: [
            Expanded(
              flex: 2,
                child: buildDropDownField(
                    text: Utils.toDate(fromDate),
                    onClicked: (){
                      pickFromDateTime(pickDate: true);
                    }),
            ),
            Expanded(
              child: buildDropDownField(
                  text: Utils.toTime(fromDate),
                  onClicked: (){
                    pickFromDateTime(pickDate: false);
                  }),
            )
          ],
        ),
        // the To time picker
        Text('TO',style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: buildDropDownField(
                  text: Utils.toDate(toDate),
                  onClicked: (){
                    pickToDateTime(pickDate: true);
                  }),
            ),
            Expanded(
              child: buildDropDownField(
                  text: Utils.toTime(toDate),
                  onClicked: (){
                    pickToDateTime(pickDate: false);
                  }),
            )
          ],
        ),

      ],
    );
  }

  Future pickFromDateTime({required bool pickDate}) async{
    final date = await pickDateTime(fromDate, pickDate: pickDate);
    if(date == null) return;
    setState(() {
      fromDate = date;
    });

    if(date.isAfter(toDate)){
      toDate = DateTime(date.year, date.month, date.day, toDate.hour, toDate.minute);
    }
  }

  Future pickToDateTime({required bool pickDate}) async{
    final date = await pickDateTime(
        toDate,
        pickDate: pickDate,
        firstDate: pickDate ? fromDate : null,
    );
    if(date == null) return;
    setState(() {
      toDate = date;
    });

  }

  Future<DateTime?> pickDateTime(
          DateTime initialDate,{
            required bool pickDate,
          DateTime? firstDate
  }) async{
    if(pickDate){
      final date = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: firstDate?? DateTime(2015, 8),
          lastDate: DateTime(2029),
      );
      if(date == null) return null;

      final time = Duration(
          hours: initialDate.hour,
          minutes: initialDate.minute);

      return date.add(time);
    }else{
      final timeOfDay = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.fromDateTime(initialDate)
      );
      if(timeOfDay == null) return null;

      final date = DateTime(initialDate.year, initialDate.month, initialDate.day);
      final time =Duration(hours: timeOfDay.hour, minutes: timeOfDay.minute);

      return date.add(time);

    }
  }

//dropdown fields
  Widget buildDropDownField({
    required String text,
    required VoidCallback onClicked,
}){
      return ListTile(
        title: Text(text),
        trailing: Icon(Icons.arrow_drop_down_outlined,
        color: Color(0xFFCC400C),),
        onTap: onClicked,
      );
  }

  Future saveForm()async{
    final isValid = _formKey.currentState!.validate();
    if(isValid){
      final event = Event(
          title: titleController.text,
          description: descriptionController.text,
          from: fromDate,
          to: toDate,
          isAllday: false
      );

      Navigator.of(context).pop();

       //context.read<EventBloc>().saveUserEvent(event);

    }
  }
}
