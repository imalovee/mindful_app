import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../widgets/availability_items.dart';
import '../widgets/availability_section.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Therapists Appointment'),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/download 1.jpg'),
                radius: 40,
              ),
              Text('Dr Albert Sam',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              Text('Counsellor',
              style: TextStyle(
                fontSize: 16
              ),),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,
                    color: Colors.orange,),
                  Icon(Icons.star,
                    color: Colors.orange,),
                  Icon(Icons.star,
                    color: Colors.orange,),
                  Icon(Icons.star,
                    color: Colors.orange,),
                  Icon(Icons.star,
                    color: Colors.orange,),
                ],
              )
            ],
          ),
          SizedBox(height: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('About',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               //color: Color(0xFF667185),
             ), ),
              Text("Dr. Albert Sam is a Compassionate therapist with over a decade of experience in health care.\nSpecializes in personalized treatment plans for diverse emotional challenges. ",
              style: TextStyle(
                //fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF667185),
              ),)
            ],
          ),
          SizedBox(height:36,),
          AvailabilitySection(),
          SizedBox(height: 26,),
          Center(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8,),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Mon-Fri'),
                      Text('8:00Am - 8:00Pm')
                    ],
                  ),

                  Column(
                    children: [
                      Text('Sat'),
                      Text('10:00Am - 4:00Pm')
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 36,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor:  Color(0xFF0E55D8),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
              ),
              onPressed: (){
              },
              child: Text('Book An Appointment'))
        ],
      ),
    );
  }
}
