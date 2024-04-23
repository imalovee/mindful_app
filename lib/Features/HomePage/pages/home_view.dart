import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindful_app/gen/assets.gen.dart';


import '../Widgets/container1.dart';
import '../Widgets/container2.dart';


import '../Widgets/daily_check_in.dart';
import 'my_appointments.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        height: MediaQuery.of(context).size.height * 0.9.clamp(45.0, double.infinity),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              top: 0,
              bottom: 0,
              child: Container(
                child: Column(
                  children: [
                    Container1(),
                    Container2()
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
                right: 20,
                top: 130,
                child: DailyCheckIn())
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
      elevation: 0,
      shape: CircleBorder(),
      foregroundColor: Colors.white,
      backgroundColor:  Color(0xFF0E55D8,
      ),
      child: Icon(Icons.add,),
      onPressed: () {  },
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

