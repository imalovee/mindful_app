import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Journal extends StatelessWidget {
  const Journal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("My Journal"),
        centerTitle: true,
        elevation: 0,

      ),
      body: ListView(
        padding: EdgeInsets.all(16.sp),
        children: [

          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: "Search Journal Entry",
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none
            ),
          ),
          SizedBox(height: 20.sp,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Today",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold
              ),),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.sp)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lonely grey skies",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                        fontWeight: FontWeight.bold
                      ),),
                    Row(
                      children: [
                        Text("The skies are grey and full of ..",
                          style: TextStyle(
                              color: Color(0xFF667185),

                          ),),
                        Text("22 April, 2024",
                          style: TextStyle(
                              color: Color(0xFF667185),

                          ),),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("April",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                  fontWeight: FontWeight.bold
                ),),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                    ContainerItems(
                      title: "Where the light is",
                      text1: "Sometimes i look for the light in..",
                      text2: "21 April,2024",
                    ),
                    Divider(),
                    ContainerItems(
                      title: "Prisms or Squares?",
                      text1: "I'm not really a person of..",
                      text2: "20 April,2024",
                    ),
                    Divider(),
                    ContainerItems(
                      title: "Sunshine Flowers",
                      text1: "Never liked flowers atall untill..",
                      text2: "19 April,2024",
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("2024",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                  fontWeight: FontWeight.bold
                ),),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                    ContainerItems(
                      title: "Happy days are over",
                      text1: "The peach pit is bigger each...",
                      text2: "21 March,2024",
                    ),
                    Divider(),
                    ContainerItems(
                      title: "Prisms or Squares?",
                      text1: "I'm not really a person of..",
                      text2: "20 April,2024",
                    ),
                    Divider(),
                    ContainerItems(
                      title: "Where do the sun go?",
                      text1: "The skies are grey and full..",
                      text2: "19 March,2024",
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
          backgroundColor: Color(0xFF0E55D8),
          onPressed: (){},
      child: Icon(Icons.edit),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class ContainerItems extends StatelessWidget {
  const ContainerItems({
    super.key, required this.title,
    required this.text1,
    required this.text2,
  });
   final String title;
   final String text1;
   final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
            fontWeight: FontWeight.bold
          ),),
        Row(
          children: [
            Text("The skies are grey and full ..",
              style: TextStyle(
                color: Color(0xFF667185),

              ),),
            Text("22 April, 2024",
              style: TextStyle(
                color: Color(0xFF667185),

              ),),
          ],
        ),
      ],
    );
  }
}
