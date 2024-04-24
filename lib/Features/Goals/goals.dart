import 'package:flutter/material.dart';
import 'package:mindful_app/Features/Goals/widgets/activity_section.dart';
import 'package:mindful_app/Features/Goals/widgets/calendar_items.dart';
import 'package:mindful_app/Features/Goals/widgets/calendar_section.dart';
import 'package:mindful_app/Features/Goals/widgets/activity_section_items.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page1.dart';

import '../../gen/assets.gen.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Progress Tracking'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context){
                      return SetGoals1();
                    }));
              },
              icon: Icon(Icons.settings,
              color: Colors.red,)),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CalendarSection(),
          SizedBox(height: 16,),
          ActivitySection(),
          SizedBox(height: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Weekly Stats',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              Container(
                child: Assets.statistics.image(),
              )
            ],
          )
        ],)

      );
  }
}

