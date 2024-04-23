import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/Shared_Widgets/goals_pages_container.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page5.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page7.dart';

import '../../HomePage/home_page.dart';

class SetGoals6 extends StatefulWidget {
  const SetGoals6({super.key});

  @override
  State<SetGoals6> createState() => _SetGoals6State();
}

bool isChecked1 = false;
bool isChecked2 = false;
bool isChecked3 = false;
bool isChecked4 = false;
bool isChecked5 = false;
bool isChecked6 = false;

class _SetGoals6State extends State<SetGoals6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              LinearProgressIndicator(
                value: 0.8,
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
                                  return SetGoals5();
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
              Text("How long do you want to \nachieve your goal(s)?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23.sp
                ),),
              GoalsTipsContainer(
                  text: "You don't have to be too hard \non yourself, set a realistic \nduration."
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36.sp),

                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    color: isChecked1? Colors.blue.shade100 : Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('7 days',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                    Checkbox(

                        value: isChecked1,
                        onChanged: (newValue){
                          setState(() {
                            isChecked1 = newValue!;
                          });
                        }
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),

                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    color: isChecked2? Colors.blue.shade100 : Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('30 days',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                    Checkbox(

                        value: isChecked2,
                        onChanged: (newValue){
                          setState(() {
                            isChecked2 = newValue!;
                          });
                        }
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),

                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    color: isChecked3? Colors.blue.shade100 : Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('90 days',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                    Checkbox(

                        value: isChecked3,
                        onChanged: (newValue){
                          setState(() {
                            isChecked3 = newValue!;
                          });
                        }
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),

                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    color: isChecked4? Colors.blue.shade100 : Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('6 Months',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                    Checkbox(

                        value: isChecked4,
                        onChanged: (newValue){
                          setState(() {
                            isChecked4 = newValue!;
                          });
                        }
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),

                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    color: isChecked5? Colors.blue.shade100 : Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('9 Months',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                    Checkbox(

                        value: isChecked5,
                        onChanged: (newValue){
                          setState(() {
                            isChecked5 = newValue!;
                          });
                        }
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder:(context){
                          return SetGoals7();
                        }));
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0E55D8),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 45),
                  )),
            ],
          )),
    );
  }
}
