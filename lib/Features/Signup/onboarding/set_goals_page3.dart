import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page1.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page2.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page4.dart';

import '../../../gen/assets.gen.dart';
import '../../HomePage/home_page.dart';
import '../../Shared_Widgets/goals_pages_container.dart';
import '../pages/setup_Page.dart';

class SetGoals3 extends StatefulWidget {
  const SetGoals3({super.key});

  @override
  State<SetGoals3> createState() => _SetGoals3State();
}

  bool isChecked1 = false;
bool isChecked2 = false;
bool isChecked3 = false;
bool isChecked4 = false;
bool isChecked5 = false;
bool isChecked6 = false;

class _SetGoals3State extends State<SetGoals3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              LinearProgressIndicator(
                value: 0.6,
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
                                  return SetGoals2();
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
              SizedBox(height: 10,),
              Text("Next, what are you struggling wiith?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp
                ),),

              GoalsTipsContainer(
                text: "Don't worry, it's a safe space\nFeel free to share",
              ),
              SizedBox(height: 16,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.sp),
                padding: EdgeInsets.all(8.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.sp),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5.sp
                  ),
                  color: isChecked1? Color(0xFFF0F0FA) : Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Loosing weight',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                    fontSize: 16),),
                    Checkbox(
                        checkColor: Color(0xFF4C51C1),
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
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    color: isChecked2? Color(0xFFF0F0FA) : Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Excess Usage of painkillers',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          ),),
                    Checkbox(
                        checkColor: Color(0xFF4C51C1),
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
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    color: isChecked3? Color(0xFFF0F0FA) : Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Usage of Substances',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                    Checkbox(
                        checkColor: Color(0xFF4C51C1),
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
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    color: isChecked4? Color(0xFFF0F0FA) : Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Opoids',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                    Checkbox(
                        checkColor: Color(0xFF4C51C1),
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
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    color: isChecked5? Color(0xFFF0F0FA) : Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Caffiene Addiction',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                    Checkbox(
                        checkColor: Color(0xFF4C51C1),
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                        color: Colors.black,
                        width: 0.5
                    ),
                    color: isChecked6? Color(0xFFF0F0FA) : Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Usage of Stimulants',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                    Checkbox(

                        value: isChecked6,
                        checkColor: Color(0xFF4C51C1),
                        onChanged: (newValue){
                          setState(() {
                            isChecked6 = newValue!;
                          });
                        }
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return SetGoals4();
                        }));
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF4C51C1),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.sp),
                      ),
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.9.sp, 45.sp),
                  ),
              ),
            ],
          )),
    );
  }
}
