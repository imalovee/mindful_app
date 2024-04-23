
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';

class TakeActionSection extends StatelessWidget {
  const TakeActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Take Action',
          style: TextStyle(
              color: Color(0xFF667185),
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),),
        SizedBox(
          height: 150,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 8),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Assets.people.image(),
                    Text('Join a Community',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                    Text('You are not alone. Find a community \nyou can grow with',
                      style: TextStyle(
                        color: Color(0xFF667185),
                          fontSize: 14.sp

                      ),)
                  ],
                ),
              ),
              SizedBox(width: 16,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Assets.nurse.image(),
                    Text('Schedule a therapy session',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                    Text('Have a one on one session with a \ntherapists today',
                      style: TextStyle(
                        color: Color(0xFF667185),
                        // fontWeight: FontWeight.bold,

                      ),)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
