
import 'package:flutter/material.dart';

import 'availability_items.dart';

class AvailabilitySection extends StatelessWidget {
  const AvailabilitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Availability',
          style: TextStyle(
              fontWeight: FontWeight.bold,
            color: Color(0xFF667185),
          ),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AvailabilityItems(
              day: "Mon",
              date: "12",
            ),
            AvailabilityItems(
              day: "Tue",
              date: "13",
            ),
            AvailabilityItems(
              day: "Wed",
              date: "14",
            ),
            AvailabilityItems(
              day: "Thu",
              date: "15",
            ),
            AvailabilityItems(
              day: "Fri",
              date: "16",
            ),
            AvailabilityItems(
              day: "Sat",
              date: "17",
            ),
          ],
        )
      ],
    );
  }
}
