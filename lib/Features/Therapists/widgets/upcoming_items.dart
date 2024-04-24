import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingItems extends StatelessWidget {
  const UpcomingItems({
    super.key, required this.name,
    required this.title,
    required this.date,
    required this.time,
    required this.image,
    this.elevated,

  });

  final String name;
  final String title;
  final String date;
  final String time;
  final Widget image;
  final ElevatedButton? elevated;


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
                image,
                SizedBox(width: 18.sp,),
                Column(
                  children: [
                    Text(name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    Text(title)
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_month),
                Text(date),
                SizedBox(width: 12,),
                Icon(Icons.watch_later),
                Text(time),
              ],
            ),
            ButtonItems()
          ],
        )
    );
  }
}

class ButtonItems extends StatelessWidget {
  const ButtonItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade700,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                )
            ),
            onPressed: (){},
            child: Text('Scheduled')),
        SizedBox(width: 18,),
        OutlinedButton(
            onPressed: (){},
            child: Text('Cancel')
        )
      ],
    );
  }
}
