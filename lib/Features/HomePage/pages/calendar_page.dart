import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mindful_app/Features/HomePage/home_bloc/cubit_bloc.dart';
import 'package:mindful_app/Features/HomePage/home_bloc/home_state.dart';
import 'package:mindful_app/Features/HomePage/pages/add_event_page.dart';
import 'package:table_calendar/table_calendar.dart';

import '../event_data/event_class.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    EventBloc eventBloc = context.watch<EventBloc>();
    EventStates eventStates = eventBloc.state;
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule an event"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay:  DateTime.utc(2030, 3, 14),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(color: Colors.blue),
              selectedDecoration: BoxDecoration(color: Colors.blue.shade900)
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(color: Colors.blue),
              weekendStyle: TextStyle(color: Colors.red)
            ),
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: _onSelectedDay,
            onFormatChanged: _onFormatChanged,
            calendarFormat: _calendarFormat,
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
        backgroundColor: Colors.blue,
      child: Icon(Icons.add, color: Colors.white,),),
    );
  }

  _onSelectedDay(selectedDay, focusedDay){
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


