import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/Shared_Widgets/goals_pages_container.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page4.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page6.dart';

import '../../HomePage/home_page.dart';

class SetGoals5 extends StatelessWidget {
  const SetGoals5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
            LinearProgressIndicator(
            value: 0.7,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context){
                                  return SetGoals4();
                                }));
                      },
                      icon: Icon(Icons.arrow_back)),
                  TextButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context){
                                  return Homepage();
                                }));
                      },
                      child: Text('Skip',
                        style: TextStyle(
                            color: Colors.red
                        ),))
                ],
              ),
              Text("Set a goal you want to \nachieve",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.sp
                ),),
                GoalsTipsContainer(
                    text: "Useful hack! Set a goal that is\nachievable one step at a time."
                ),
              SizedBox(height: 8.sp),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My Goal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                     hintText: "Enter your goal here",
                     border: OutlineInputBorder(
                       borderSide: BorderSide(
                         color: Colors.grey
                       )
                     )
                    ),
                  )
                ],
              ),
              SizedBox(height: 170.sp),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder:(context){
                          return SetGoals6();
                        }));
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor:Color(0xFF4C51C1),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.9.sp, 45.sp),
                  )),
            ],
          )),
    );
  }
}
