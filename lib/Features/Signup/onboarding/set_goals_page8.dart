import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/HomePage/home_page.dart';

import '../../../gen/assets.gen.dart';

class SetGoals8 extends StatelessWidget {
  const SetGoals8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ) ,
      body: ListView(
        padding: EdgeInsets.all(16.sp),
        children: [
          SizedBox(height: 150.sp,),
          Assets.target.image(
              height: 200.sp,
              width: 200.sp,
              alignment: Alignment.centerLeft
          ),
          Text('Great Job! Your goal(s) is set. Time to explore mindful',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: 8,),
          Text("You've taken a big step by deciding to break out of your addiction, bravo. Now let's see what mindful has to offer",
            style: TextStyle(
                color: Colors.grey
            ),),
          SizedBox(height: 20.sp,),
          ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(
                    builder:(context){
                      return Homepage();
                    }));
              },
              child: Text('Proceed to home page'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4C51C1),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.sp),
                  ),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.9.sp, 45.sp),
              )),

        ],
      ),
    );
  }
}
