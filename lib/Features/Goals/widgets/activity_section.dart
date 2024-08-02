
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import 'activity_section_items.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Activity',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFCC400C)
          ),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GoalsSectionItems(
              image: Assets.frame194.image(
                height: 200,
                //width: 250,
              ),
            ),
            GoalsSectionItems(
              image: Assets.frame195.image(
                height: 200,
                //width: 250,
              ),
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GoalsSectionItems(
              image: Assets.frame196.image(
                height: 200,
                //width: 250,
              ),
            ),
            GoalsSectionItems(
              image: Assets.frame197.image(
                height: 200,
                //width: 250,
              ),
            ),
          ],
        )
      ],
    );
  }
}
