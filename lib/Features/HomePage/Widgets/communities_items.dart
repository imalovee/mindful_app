
import 'package:flutter/material.dart';

class CommunitiesItems extends StatelessWidget {
  const CommunitiesItems({
    super.key, required this.title, required this.subtitle, required this.image,
  });
  final String title;
  final String subtitle;
  final Widget image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,

              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFE3EFFC),
                    borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.rectangle
                ),
                child: Text('50+ Members',
                  style: TextStyle(
                      color: Color(0xFF04326B),
                      fontSize: 16
                  ),),
              ),
            ),
            //SizedBox(height: 16,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                image,
                Text( title,
                  style: TextStyle(
                    // color: Color(0xFF04326B),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
                Text( subtitle,
                  style: TextStyle(
                      color:  Color(0xFF667185),
                      fontSize: 16
                  ),),
              ],
            ),

          ]

      ),
    );
  }
}

