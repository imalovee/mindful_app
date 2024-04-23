
import 'package:flutter/material.dart';

import 'calendar_items.dart';

class CalendarSection extends StatelessWidget {
  const CalendarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CalendarItems(
          date: "12",
          day: "Mon",
        ),
        CalendarItems(
          date: "13",
          day: "Tue",
        ),
        CalendarItems(
          day: "Wed",
          date: "14",
        ),
        CalendarItems(
          day: "Thur",
          date: "15",
        ),
        CalendarItems(
          day: "Fri",
          date: "16",
        ),
        CalendarItems(
          day: "Sat",
          date: "17",
        ),
      ],
    );
  }
}
