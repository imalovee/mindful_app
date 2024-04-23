
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class GoalsTipsContainer extends StatelessWidget {
  const GoalsTipsContainer({
    super.key, required this.text,
  });

  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Assets.stars.image(
            height: 50,
            width: 50,
          ),
          Text(text,
            style: TextStyle(
              fontSize: 16,
            ),)
        ],
      ),
    );
  }
}





