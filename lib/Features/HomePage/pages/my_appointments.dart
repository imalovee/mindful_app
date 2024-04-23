import 'package:flutter/material.dart';

class MyAppointments extends StatelessWidget {
  const MyAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                   height: 600,
                    child: TabBarView(
                        children: [
                          Column(
                            children: [
                              UpcomingItems(),
                              UpcomingItems(),
                              UpcomingItems(),
                              SizedBox(height: 18,),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.blue.shade700,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)
                                  )
                                ),
                                  onPressed: (){},
                                  child:  Text('Edit Appointments'),
                              )

                            ],
                          ),
                          Container(
                            child: Text('Previous Appointments'),
                          ),
                          Container(
                            child: Text('Cancelled Appointments'),
                          )
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

class UpcomingItems extends StatelessWidget {
  const UpcomingItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.all(8),
     decoration: BoxDecoration(
      color: Colors.blue.shade50,
       borderRadius: BorderRadius.circular(16),
                    ),
     // height: 150,
     // width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text('Dr. Albert Sam',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  Text('Dentist')
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calendar_month),
              Text('17/8/2024'),
              SizedBox(width: 12,),
              Icon(Icons.watch_later),
              Text('8:00Am'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade700,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  )
                ),
                  onPressed: (){},
                  child: Text('Scheduled')),
              SizedBox(width: 18,),
             OutlinedButton(
                 onPressed: (){},
                 child: Text('Cancel')
             )
            ],
          )
        ],
      )
    );
  }
}
