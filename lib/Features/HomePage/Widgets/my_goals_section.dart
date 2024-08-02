import 'package:flutter/material.dart';
import 'package:mindful_app/Features/Goals/goals.dart';
import 'package:mindful_app/Features/Signup/pages/setup_Page.dart';

import '../../../gen/assets.gen.dart';
import 'my_goals_items.dart';

class MyGoalsSection extends StatelessWidget {
  const MyGoalsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('My Goals',
              style: TextStyle(
                  color: Color(0xFF667185),
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),),
            TextButton(
                onPressed: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context){
                        return SetupPage();
                      }));
                },
                child: Text('Set Goals',
                  style: TextStyle(
                      color: Color(0xFFCC400C),
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),))
          ],
        ),
        SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                MyGoalsItems(
                  title: 'No drinking' ,
                  subtitle: '30 days',
                  image: Assets.ellipse206.image(),
                ),
                SizedBox(width: 12,),
                MyGoalsItems(
                  title: 'Sleep Early' ,
                  subtitle: '7 days',
                  image: Assets.ellipse206.image(),
                ),
                SizedBox(width: 12,),
                MyGoalsItems(
                  title: 'Water' ,
                  subtitle: '30 days',
                  image: Assets.ellipse206.image(),
                )
              ],
            )
        )
      ],
    );
  }
}

