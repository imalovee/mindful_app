import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import 'Widgets/health_tips_item.dart';

class HealthTips extends StatelessWidget {
  const HealthTips({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.settings_backup_restore),
        title: Text('Health Tip',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        centerTitle: true,
      ),
      body: ListView(

        children: [
      Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Assets.sliders.image(),
          SizedBox(width: 8,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Health Tip of the day',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
              Text('Consuming whole grains can help \nimprove mood and support \nmental well-being.',
                style: TextStyle(
                  color: Color(0xFF667185),
                  //fontWeight: FontWeight.bold,
                ),),
            ],
          ),
        ],
      ),
    ),
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Category',
              style: TextStyle(
                color: Color(0xFF667185),
                fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Row(
                        mainAxisAlignment: start,
                        children: [],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 300.sp ,
            margin: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
             scrollDirection: Axis.horizontal,
              children: [
               HealthTipsItem(
                 image: Assets.rectangle1.image(),
                title: "Self Care",
                 subtext: 'self care is a healthy \nway to keep ..',
               ),
                SizedBox(width: 30,),
                HealthTipsItem(
                  image: Assets.rectangle2.image(),
                  title: "Benefits of a \nhealthy lifestyle",
                  subtext: 'keeping up with exercises',
                ),
              ],
            ),
          ),
         // SizedBox(height: 20,),
          Container(
            height: 360,
           margin:  EdgeInsets.all(8.0),
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: [
                HealthTipsItem(
                  image: Assets.rectangle3.image(),
                  title: "Incorporating selfcare\ninto Addiction recovery ",
                  subtext: 'why self care is\nimportant for your..',
                ),
                SizedBox(width: 30,),
                HealthTipsItem(
                  image: Assets.rectangle4.image(),
                  title: "Building a personal \nhygiene system",
                  subtext: 'personal hygiene gives \nyou a clean..',
                ),
              ],
            ),
          )
              ],
            ),
    );
  }
}
