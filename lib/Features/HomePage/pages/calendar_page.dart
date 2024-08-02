import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/HomePage/pages/add_event_page.dart';
import 'package:table_calendar/table_calendar.dart';

import '../event_data/event_class.dart';

class Calendar extends StatefulWidget {
  
  const Calendar({super.key, });

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Color(0xFF4C51C1),
        title: Text("Schedule an Event",
        style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay:  DateTime.utc(2030, 3, 14),
            rowHeight: 52.0.sp,
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(color: Colors.deepPurple.shade100),
              selectedDecoration: BoxDecoration(color: Color(0xFF4C51C1),)
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(color: Color(0xFF4C51C1), fontWeight: FontWeight.bold),
              weekendStyle: TextStyle(color: Colors.red)
            ),
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: onSelectedDay,
            onFormatChanged: _onFormatChanged,
            calendarFormat: _calendarFormat,
           // eventLoader: context.read<EventBloc>().saveUserEvent() ,
            //eventLoader: eventBloc.saveUserEvent() ,
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){Navigator.push(context,MaterialPageRoute(
              builder: (context){
                return AddEvents();
              })
          );},
        backgroundColor: Color(0xFF4C51C1),
      child: Icon(Icons.add, color: Colors.white,),),
    );
  }

  onSelectedDay(selectedDay, focusedDay){
    if(!isSameDay(_selectedDay, selectedDay)){
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
  }

  _onFormatChanged(format){
    if(_calendarFormat != format){
      setState(() {
        _calendarFormat = format;
      });
    }
  }
}


