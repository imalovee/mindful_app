import 'package:flutter/material.dart';
import 'package:mindful_app/Features/Health/health_tips.dart';

import '../../../gen/assets.gen.dart';

class HealthTipSection extends StatelessWidget {
  const HealthTipSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(width: 18,),
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
          // IconButton(
          //     onPressed: (){
          //       Navigator.pushReplacement(context,
          //          MaterialPageRoute(builder: (context){
          //            return HealthTips();
          //          }));
          //     },
          //     icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}
