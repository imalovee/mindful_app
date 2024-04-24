
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindful_app/Features/Therapists/widgets/upcoming_items.dart';

class TabBarView1 extends StatelessWidget {
  const TabBarView1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UpcomingItems(
          image: CircleAvatar(
            backgroundImage: AssetImage('assets/download 1.jpg'),
          ),
          name: 'Dr. Matt Peters',
          title: 'Psycologists',
          date: '20/5/2024',
          time: '8:00Am',
        ),
        UpcomingItems(
          image: CircleAvatar(
            backgroundImage: AssetImage('assets/download 2.jpg'),
          ),
          name: 'Dr Patricia',
          title: "Counscellor",
          date: '20/6/2024',
          time: '8:00Am',
        ),
        UpcomingItems(
          image: CircleAvatar(
            backgroundImage: AssetImage('assets/download 3.jpg'),
          ),
          name: 'Dr. Samantha',
          title: 'Psycologists',
          date: '17/6/2024',
          time: '9:00Am',
        ),
        SizedBox(height: 18,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue.shade700,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              )
          ),
          onPressed: (){},
          child:  Text('Edit Appointments'),
        )

      ],
    );
  }
}
