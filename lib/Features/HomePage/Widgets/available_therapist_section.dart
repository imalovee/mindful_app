import 'package:flutter/material.dart';

import 'available_therapist_items.dart';

class AvailableTherapistsSection extends StatelessWidget {
  const AvailableTherapistsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Online',
              style: TextStyle(
                  color: Color(0xFF0E55D8),
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),),
            // TextButton(
            //     onPressed: (){},
            //     child: Text('View All',
            //       style: TextStyle(
            //           color: Color(0xFF0E55D8),
            //           fontWeight: FontWeight.bold,
            //           fontSize: 16
            //       ),))
          ],
        ),
        SizedBox(
          height: 110,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              AvailableTherapistItems(
                text: 'Adabeke',
                image: CircleAvatar(
                  backgroundImage:  AssetImage('assets/pi1.jpg'),
                  radius: 30,
                ),
              ),
              SizedBox(width: 14,),
              AvailableTherapistItems(
                text: 'Adam',
                image: CircleAvatar(
                  backgroundImage:  AssetImage('assets/pi5.jpg'),
                  radius: 30,
                ),
              ),
              SizedBox(width: 14,),
              AvailableTherapistItems(
                text: 'Catere',
                image: CircleAvatar(
                  backgroundImage:  AssetImage('assets/p12.jpeg'),
                  radius: 30,
                ),
              ),
              SizedBox(width: 14,),
              AvailableTherapistItems(
                text: 'May',
                image: CircleAvatar(
                  backgroundImage:  AssetImage('assets/pi3.jpg'),
                  radius: 30,
                ),
              ),
              SizedBox(width: 14,),
              AvailableTherapistItems(
                text: 'Grace',
                image: CircleAvatar(
                  backgroundImage:  AssetImage('assets/pi4.jpg'),
                  radius: 30,
                ),
              ),
              SizedBox(width: 14,),
              AvailableTherapistItems(
                text: 'Fiona',
                image: CircleAvatar(
                  backgroundImage:  AssetImage('assets/pi9.jpg'),
                  radius: 30,
                ),
              ),

            ],
          ),
        )
      ],
    );
  }
}
