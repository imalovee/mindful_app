
import 'package:flutter/material.dart';

class HealthTipsItem extends StatelessWidget {
  const HealthTipsItem({
    super.key, required this.image,
    required this.title,
    required this.subtext,
  });
  final Widget image;
  final String title;
  final String subtext;




  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        image,
          // height: 190,
          // width: 190,

        Text( title,
          style: TextStyle(
            fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),),
        Text( subtext,
          style: TextStyle(
              color: Colors.black
          ),),

      ],
    );
  }
}

