
import 'package:flutter/material.dart';
import 'package:mindful_app/Features/Therapists/pages/book_appointment.dart';

import '../../../gen/assets.gen.dart';

class TherapistWidget extends StatelessWidget {
  const TherapistWidget({
    super.key, required this.title,
    required this.subTitle, required this.image,
  });
  final String title;
  final String subTitle;

  final Widget image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: EdgeInsets.all(8),
      //margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: image
          ),
          Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          Text(subTitle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star,
                color: Color(0xFFFFCC41),),
              Icon(Icons.star,
                color:Color(0xFFFFCC41),),
              Icon(Icons.star,
                color: Color(0xFFFFCC41),),
              Icon(Icons.star,
                color: Color(0xFFFFCC41),),
              Icon(Icons.star,
                color: Color(0xFFFFCC41),)
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0E55D8),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
              ),
              onPressed: (){
                Navigator.push(
                    context,
                MaterialPageRoute(
                    builder: (context){
                      return BookAppointment();
                    }));
              },
              child: Text('Schedule Now'))
        ],
      ),
    );
  }
}
