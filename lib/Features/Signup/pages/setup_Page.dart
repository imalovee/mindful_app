import 'package:flutter/material.dart';
import 'package:mindful_app/Features/HomePage/home_page.dart';

import '../../../gen/assets.gen.dart';
import '../onboarding/set_goals_page1.dart';

class SetupPage extends StatelessWidget {
  const SetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(16),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(height: 20,),

               Assets.success.image(
                   //height: 70,
                  // width: 70
               ),
               SizedBox(height: 16,),
               Text('You are all set',
                 style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25
                 ),),
               Text("Start your journey to recovery a day at a time",
               style: TextStyle(
                 color: Colors.grey,
                 fontSize: 16

               ),),
               Text("First you need to set a goal",
                 style: TextStyle(
                     color: Colors.grey
                 ),),
               SizedBox(height: 20,),
               ElevatedButton(
                   onPressed: (){
                     Navigator.pushReplacement(
                         context, MaterialPageRoute(
                         builder:(context){
                           return SetGoals1();
                         }));
                   },
                   child: Text("Set Goal"),
                   style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.blue.shade700,
                       foregroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(8),
                       )
                   ).copyWith(
                     minimumSize: MaterialStateProperty.all(Size.fromHeight(30)),
                     fixedSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width * 0.9, 40)),
                   )),
               SizedBox(height: 16,),
               TextButton(
                   onPressed: (){
                     Navigator.pushReplacement(
                         context, MaterialPageRoute(
                         builder:(context){
                           return Homepage();
                         }));
                   },
                   child: Text('Skip to HomePage',
                   style: TextStyle(
                     color: Colors.blue
                   ),))
             ],
           ),
          )),
    );
  }
}
