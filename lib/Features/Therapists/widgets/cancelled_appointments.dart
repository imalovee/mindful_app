import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/Therapists/widgets/upcoming_items.dart';

class CancelledAppointments extends StatelessWidget {
  const CancelledAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        // height: 150,
        // width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/download 4.jpg'),
                ),
                SizedBox(width: 18.sp,),
                Column(
                  children: [
                    Text("Dr. Albert Sam",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    Text("Counsellor",)
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_month),
                Text('20/5/2023'),
                SizedBox(width: 12,),
                Icon(Icons.watch_later),
                Text('8:00Am'),
              ],
            ),

            //ButtonItems()
          ],
        )
    );
  }
}
