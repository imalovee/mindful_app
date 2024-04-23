import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindful_app/Features/Login/bloc/login_bloc.dart';
import 'package:mindful_app/Features/Login/pages/login_page.dart';
import 'package:mindful_app/gen/assets.gen.dart';

import 'Widgets/profile_items.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Profile',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 20,),
          Assets.download3.image(
            height: 100.sp,
            width: 100.sp
          ),
          SizedBox(height: 16,),
          ProfileItems(
            header: "Name",
            hint: "Ronke",
          ),
          SizedBox(height: 8,),
          ProfileItems(
            header: "Email Address",
            hint: "abas@gmail.com",
          ),
          SizedBox(height: 8,),
          ProfileItems(
            header: "Phone Number",
            hint: "09026786577",
          ),
          SizedBox(height: 8,),
          ProfileItems(
            header: "Address",
            hint: "6 Alexis Avenue",
          ),
          SizedBox(height: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: (){},
                      child: Text("Log Out",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15
                      ),)),
                  IconButton(
                      onPressed: (){
                        context.read<LoginBloc>().logout();
                        Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context){
                          return LoginPage();
                        }));
                      },
                      icon: Icon(Icons.logout,
                      color: Colors.red,))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: (){},
                      child: Text("Delete Account",
                        style: TextStyle(
                            color: Colors.red
                        ),)),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.delete,
                        color: Colors.red,))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

