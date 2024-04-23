import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/HomePage/home_page.dart';
import 'package:mindful_app/Features/Shared_Widgets/signup_items.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page2.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page3.dart';
import 'package:mindful_app/Features/Signup/pages/setup_Page.dart';

class SetGoals1 extends StatelessWidget {
  const SetGoals1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child:ListView(
            padding: EdgeInsets.all(16),
            children: [
              SizedBox(height: 30,),
              LinearProgressIndicator(
                value: 0.2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),

              ),
              //SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context){
                                  return SetupPage();
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
              SizedBox(height: 8.sp),
              Text("First, let's get to know you",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26
              ),),
              SizedBox(height: 20.sp),
              SiignupItems(
                  title: "Username",
                  label: "Enter a username of your choice",
                  onChanged: (newText){})
            ],
          )),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context){
                      return SetGoals2();
                    }));
          },
        child: Icon(Icons.arrow_forward_ios),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF0E55D8),
      ),
    );
  }
}
