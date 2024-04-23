import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindful_app/Features/HomePage/Widgets/take_action_section.dart';

import '../../../gen/assets.gen.dart';
import 'available_therapist_section.dart';
import 'communities.dart';
import 'communities_items.dart';
import 'health_tip_section.dart';
import 'my_goals_section.dart';
class Container2 extends StatelessWidget {
  const Container2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      // decoration: BoxDecoration(
      //   color: Colors.grey.shade100,
      // ),
      padding: EdgeInsets.all(16),
      child:ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 70,),
          // AvailableTherapistsSection(),
          TakeActionSection(),
          HealthTipSection(),
          MyGoalsSection(),
          SizedBox(height: 16,),
          Communities()
            ],
          ),
      );
  }
}
