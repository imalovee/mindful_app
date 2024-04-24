import 'package:flutter/material.dart';
import 'package:mindful_app/Features/HomePage/pages/home_view.dart';
import 'package:mindful_app/Features/journal/pages/journal.dart';

import '../Goals/goals.dart';
import '../Health/health_tips.dart';
import '../Profile/profile.dart';
import '../Therapists/pages/therapist.dart';



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  var screens = [
    HomeView(),
    Therapist(),
    Goals(),
    HealthTips(),
    Journal(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value){
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
            label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital),
                label: "Therapists"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.rocket_launch),
                label: "Goals"),
            BottomNavigationBarItem(
                icon: Icon(Icons.health_and_safety_outlined),
                label: "Healthtips"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_outlined),
                label: "Journal"),
          ]
      ),

    );
  }
}
