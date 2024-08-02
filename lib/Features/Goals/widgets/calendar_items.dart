
import 'package:flutter/material.dart';

class CalendarItems extends StatelessWidget {
  const CalendarItems({
    super.key, required this.day, required this.date,
  });

  final String day;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(day,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.grey.shade400,
              shape: BoxShape.circle
          ),
          padding: EdgeInsets.all(8),
          child: Text(date,),
        ),
      ],
    );
  }
}
