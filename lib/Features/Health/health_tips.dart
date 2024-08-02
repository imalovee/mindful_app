import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../gen/assets.gen.dart';
import 'Widgets/health_tips_item.dart';

class HealthTips extends StatelessWidget {
  const HealthTips({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,

        title: Text('Health Tip',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.shop,
                          color: Colors.red,),
                          SizedBox(width: 8,),
                          Column(
                            children: [
                              Text('LifeStyle',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                              Text('22 Tips')
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 70,),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(FontAwesomeIcons.plateWheat,
                            color: Color(0xFF4C51C1),),
                          SizedBox(width: 8,),
                          Column(
                            children: [
                              Text('Health Care',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('22 Tips')
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text('Tips for You',
                    style: TextStyle(
                      color: Color(0xFF667185),
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),),
                  TextButton(
                      onPressed: (){},
                      child: Text('View All',
                        style: TextStyle(
                            color: Color(0xFFCC400C),
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HealthTipsItem(
                    image: Assets.image1.image(),
                    title: "Why you need \nto eat more apples",
                    subtext: 'An apple a day keeps  \nthe doctor away..',
                  ),
                  SizedBox(width: 12,),
                  HealthTipsItem(
                    image: Assets.image4.image(
                      // height: 100,
                      // width: 100
                    ),
                    title: "Healthy lifestyle",
                    subtext: 'Physical fitness is not \nonly one of the most \nkey importance to a..',
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HealthTipsItem(
                    image: Assets.image6.image(),
                    title: "4 Steps to breaking \n your bad habits ",
                    subtext: 'Finding something \nsimilar to your bad  ...',
                  ),
                  SizedBox(width: 12,),
                  HealthTipsItem(
                    image: Assets.image8.image(),
                    title: "How exercie can \nhelp with recovery",
                    subtext: 'personal hygiene gives \nyou a clean..',
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HealthTipsItem(
                    image: Assets.image2.image(),
                    title: "Nutritional health \nduring recovery ",
                    subtext: 'Finding something \nsimilar to your bad  ...',
                  ),
                  SizedBox(width: 12,),
                  HealthTipsItem(
                    image: Assets.image3.image(),
                    title: "8 Tips for healthy \neating",
                    subtext: 'The key to a healthy \ndiet is to eat the right ..',
                  ),
                ],
              )
            ],
          )
         
              ],
            ),
    );
  }
}
