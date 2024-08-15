import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindful_app/Features/HomePage/pages/calendar_page.dart';
import 'package:mindful_app/Features/Profile/bloc/profile_cubit.dart';
import 'package:mindful_app/Features/Profile/bloc/profile_state.dart';
import 'package:mindful_app/Features/Profile/models/model_x.dart';
import 'package:mindful_app/Features/Profile/models/user_model.dart';
import 'package:mindful_app/Features/Profile/profile_repository.dart';
import '../../Profile/profile.dart';
import '../Widgets/communities.dart';
import '../Widgets/daily_check_in.dart';
import '../Widgets/health_tip_section.dart';
import '../Widgets/my_goals_section.dart';
import '../Widgets/take_action_section.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  ProfileRepository _profileRepository = ProfileRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return Profile();
                }));
          },

          child: BlocBuilder<ProfileCubit, ProfileImageState>(
            builder: (context, state){
              if(state is ProfileImageUpdated){
                return CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(state.imageUrl),
                );
              }else{
                return CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person,color: Colors.grey, size: 30,),
                );
              }
            }

          ),
        ),
        title: Text('Hello Ima',
        style: TextStyle(color: Colors.white),),
        actions: [
          Icon(FontAwesomeIcons.solidBell,
            color: Colors.white,),
          SizedBox(width: 8,),
          IconButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return Calendar();
                    }));
              },
              icon: Icon(Icons.calendar_month,
              color: Colors.white,))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.sp),
        shrinkWrap: true,
        children: [
         // Container1(),
          //SizedBox(height: 30,),
          DailyCheckIn(),
          SizedBox(height: 16,),
          HealthTipSection(),
          MyGoalsSection(),
          SizedBox(height: 16,),
          Communities(),
          TakeActionSection()
        ],
      ),
    );
  }

}

