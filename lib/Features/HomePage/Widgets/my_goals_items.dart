import 'package:flutter/material.dart';

class MyGoalsItems extends StatelessWidget {
  const MyGoalsItems({
    super.key, required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title;
  final String subtitle;
  final Widget image;
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              image,
              SizedBox(width: 8,),
              Text(title,
                style: TextStyle(
                    color: Color(0xFF667185),
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),),
            ],
          ),

          Text(subtitle,
            style: TextStyle(
              color: Color(0xFF667185),
            ),)
        ],
      ),
    );
  }
}

