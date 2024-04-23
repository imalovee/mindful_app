
import 'package:flutter/material.dart';

class AvailabilityItems extends StatelessWidget {
  const AvailabilityItems({
    super.key, required this.day, required this.date,
  });
  final String day;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 70,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade100,
          //shape: BoxShape.circle
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(day,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          Text(date,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
        ],
      ),
    );
  }
}
