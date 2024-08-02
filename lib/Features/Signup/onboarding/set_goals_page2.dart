import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page1.dart';
import 'package:mindful_app/Features/Signup/onboarding/set_goals_page3.dart';

import '../../../gen/assets.gen.dart';
import '../../HomePage/home_page.dart';
import '../../Shared_Widgets/goals_pages_container.dart';



class SetGoals2 extends StatefulWidget {
  const SetGoals2({super.key});

  @override
  State<SetGoals2> createState() => _SetGoals2State();
}


class _SetGoals2State extends State<SetGoals2> {

  final double _kItemExtent = 32.0;
  final List<String> _years = <String>[
    '1980',
    '1981',
    '1982',
    '1983',
    '1984',
    '1986',
    '1987',
    '1988',
    '1989',
    '1990',
    '1991',
    '1992',
    '1993',
    '1994',
    '1996',
    '1997',
    '1998',
    '1999',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
  ];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              LinearProgressIndicator(
                value: 0.4,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context){
                                  return SetGoals1();
                                }));
                      },
                      icon: Icon(Icons.arrow_back)),
                  TextButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context){
                                  return Homepage();
                                }));
                      },
                      child: Text('Skip',
                        style: TextStyle(
                            color: Colors.red
                        ),)),


                ],
              ),
              Text("What's your birth year?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp
                ),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.sp),
                padding: EdgeInsets.all(16.sp),
                decoration: BoxDecoration(
                    color: Color(0xFFF0F0FA),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.cake,
                      color: Colors.orange,),
                    SizedBox(width: 8.sp),
                    Text("It will help us to suggest healthy \ntips and goals that best suits you",
                      style: TextStyle(
                        fontSize: 16,
                      ),)
                  ],
                ),
              ),
              SizedBox(
                height: 300.sp,
                child: CupertinoPicker(
                  magnification: 1.30,
                    useMagnifier: true,
                    itemExtent: _kItemExtent ,
                    onSelectedItemChanged: (int selectedYear){
                        setState(() {
                          selectedItem = selectedYear;
                        });
                    },
                    scrollController: FixedExtentScrollController(
                      initialItem: selectedItem
                    ),
                    children: List<Widget>.generate(_years.length, (int index){
                      return Center(
                        child: Text(_years[index]),
                      );
                    })
              ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return SetGoals3();
                        }));
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor:Color(0xFF4C51C1),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 45),
                  )),
            ],
          )
      ),
    );
  }
}


// CupertinoDatePicker(
// initialDateTime: dateTime ,
// maximumYear: DateTime.now().year ,
// minimumYear: 1990 ,
// onDateTimeChanged: (dateTime){
// setState(() {
// this.dateTime = dateTime;
// });
// },
// mode: CupertinoDatePickerMode.date,
// ),