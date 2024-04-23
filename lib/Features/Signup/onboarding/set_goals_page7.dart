import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page6.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page8.dart';

import '../../HomePage/home_page.dart';

class SetGoals7 extends StatefulWidget {
  const SetGoals7({super.key});

  @override
  State<SetGoals7> createState() => _SetGoals7State();
}
DateTime dateTime = DateTime.now();
bool isSwitched = false;


class _SetGoals7State extends State<SetGoals7> {
  Duration selected = Duration(hours: 0, minutes: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              LinearProgressIndicator(
                value: 10,
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
                                  return SetGoals6();
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
              Text("Almost Done! \nNow let's set a reminder",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23
                ),),
        Container(
          margin: EdgeInsets.symmetric(vertical: 16.sp),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8)
          ),
          child: ListTile(
            leading: Icon(FontAwesomeIcons.solidBell,
            color: Colors.orange,),
            title: Text('Activate Daily check-in',
            style: TextStyle(

              fontSize: 16.sp
            ),),
            trailing: Switch(
                value: isSwitched,
                onChanged: (value){
                  setState(() {
                    isSwitched = value;
                  });
                },
            activeColor: Colors.blue,),
          )
        ),
              SizedBox(
                height: 250.sp,
                child: CupertinoTimerPicker(
                  onTimerDurationChanged: (Duration value) {
                    setState(() {
                      selected = value;
                    });
                  },
                  minuteInterval: 1,
                  alignment: Alignment.center,
                  mode: CupertinoTimerPickerMode.hm,
                ),
              ),
              SizedBox(height: 30.sp,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder:(context){
                          return SetGoals8();
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
          )
      ),
    );
  }
}
