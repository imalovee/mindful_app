
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
        SizedBox(
          height: 180,
            width: 150,
            child: image),
          // height: 190,
          // width: 190,

        Text( title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),),
        Text( subtext,
          style: TextStyle(
              color: Colors.black
          ),),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.black
            ),
            onPressed: (){},
            child: Text('Read More'))
      ],
    );
  }
}

