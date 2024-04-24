import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindful_app/gen/assets.gen.dart';


import '../../Profile/profile.dart';
import '../Widgets/communities.dart';




import '../Widgets/daily_check_in.dart';
import '../Widgets/health_tip_section.dart';
import '../Widgets/my_goals_section.dart';
import '../Widgets/take_action_section.dart';
import '../../Therapists/pages/my_appointments.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return Profile();
                }));
          },
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/p11.jpg'),
            radius: 30,
          ),
        ),
        title: Row(
                children: [
                  Text('Hi, Ronke',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                  Icon(FontAwesomeIcons.hand,color: Colors.orange,)
                ],
        ) ,
        actions: [
          Icon(FontAwesomeIcons.solidBell,
            color: Colors.white,),
          SizedBox(width: 8,),
          Icon(Icons.calendar_month,
            color: Colors.white,)
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.sp),
        shrinkWrap: true,
        children: [
         // Container1(),
          //SizedBox(height: 30,),
          DailyCheckIn(),
          SizedBox(height: 16,),
          TakeActionSection(),
          HealthTipSection(),
          MyGoalsSection(),
          SizedBox(height: 16,),
          Communities()
        ],
      ),
      floatingActionButton: FloatingActionButton(
      elevation: 0,
      shape: CircleBorder(),
      foregroundColor: Colors.white,
      backgroundColor:  Color(0xFF0E55D8,
      ),
      child: Icon(Icons.add,),
      onPressed: () {  },
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

