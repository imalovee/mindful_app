
import 'package:flutter/material.dart';

class DailyCheckIn extends StatelessWidget {
  const DailyCheckIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        height: 120,
        decoration: BoxDecoration(
            color: Color(0xFF4C51C1),
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Daily Check-in',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),),
                    // Icon(FontAwesomeIcons.fire,
                    //   color: Colors.orange,),
                  ],
                ),

                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.more_vert, color: Colors.white,))

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DailyCheckItems(
                  text: 'S',),
                DailyCheckItems(
                  text: 'M',
                ),
                DailyCheckItems(
                  text: 'T',
                ),
                DailyCheckItems(
                  text: 'W',
                ),
                DailyCheckItems(
                  text: 'T',
                ),
                DailyCheckItems(
                  text: 'F',
                ),
              ],
            )
          ],
        )
    );
  }
}



class DailyCheckItems extends StatelessWidget {
  const DailyCheckItems({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xFFFFCC41),
          shape: BoxShape.circle,
          border: Border()
      ),
      padding: EdgeInsets.all(8),
      child: Text(text,
        style: TextStyle(
            color: Color(0xFF0E55D8),
            fontWeight: FontWeight.bold,
            fontSize: 16
        ),),
    );
  }
}

