import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/Therapists/widgets/cancelled_appointments.dart';
import 'package:mindful_app/Features/Therapists/widgets/previous_appointments.dart';

import '../widgets/tab_bar_view1.dart';
import '../widgets/upcoming_items.dart';

class MyAppointments extends StatelessWidget {
  const MyAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text('My Appointments'),
        actions: [
          IconButton(
              onPressed:(){}, 
              icon:Icon(Icons.notifications))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                      tabs: [
                        Tab(child: Text('Upcoming',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),),),
                        Tab(child: Text('Previous',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),),),
                        Tab(child: Text('Cancelled',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),),),
                      ]
                  ),
                  SizedBox(
                   width: double.maxFinite,
                   height: 600.sp,
                    child: TabBarView(
                        children: [
                          TabBarView1(),
                          PreViousAppointments(),
                         CancelledAppointments()
                        ]
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

