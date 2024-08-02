import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page5.dart';

import '../../../gen/assets.gen.dart';

class SetGoals4 extends StatelessWidget {
  const SetGoals4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.sp),
        children: [
          SizedBox(height: 150,),
          Assets.target.image(
            height: 200.sp,
            width: 200.sp,
            alignment: Alignment.centerLeft
          ),
          Text('Do you want to convert them to goals?',
          style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 8.sp,),
          Text('You can set goals to help you break out of the addiction you are struggling with',
          style: TextStyle(
            color: Colors.grey
          ),),
          SizedBox(height: 20.sp,),
          ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(
                    builder:(context){
                      return SetGoals5();
                    }));
              },
              child: Text('Sure, Convert'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4C51C1),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.9.sp, 45.sp),
              )),
          TextButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder:(context){
                      return SetGoals5();
                    }));
              },
              child: Text('No, I want to set my goals',
                style: TextStyle(
                    color: Color(0xFFCC400C),
                ),))
        ],
      ),
    );
  }
}
