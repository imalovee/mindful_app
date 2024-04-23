
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import 'communities_items.dart';

class Communities extends StatelessWidget {
  const Communities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Communities for you',
              style: TextStyle(
                  color: Color(0xFF667185),
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),),
            TextButton(
                onPressed: (){},
                child: Text('View All',
                  style: TextStyle(
                      color: Color(0xFF0E55D8),
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),))
          ],
        ),
        SizedBox(
          height: 170,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              CommunitiesItems(
                image: Assets.drug.image(),
                title: 'Breaking Opioids',
                subtitle: 'A community curated for \npeople struggling with opioids',
              ),
              SizedBox(width: 16,),
              CommunitiesItems(
                image: Assets.drink.image(),
                title: 'Soda addicts',
                subtitle: 'A community curated for \npeople struggling with  soda intake',
              )
            ],
          ),
        )
      ],
    );
  }
}
