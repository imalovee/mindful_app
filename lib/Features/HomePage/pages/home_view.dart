import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mindful_app/Features/HomePage/pages/calendar_page.dart';
import 'package:mindful_app/Features/HomePage/pages/image_utils.dart';
import 'package:mindful_app/Features/Profile/dataStore.dart';
import 'package:mindful_app/Features/Profile/models/model_x.dart';
import 'package:mindful_app/Features/Profile/models/user_model.dart';
import 'package:mindful_app/Features/Profile/profile_repository.dart';
import 'package:mindful_app/gen/assets.gen.dart';
import '../../Profile/profile.dart';
import '../Widgets/communities.dart';
import '../Widgets/daily_check_in.dart';
import '../Widgets/health_tip_section.dart';
import '../Widgets/my_goals_section.dart';
import '../Widgets/take_action_section.dart';
import 'dart:typed_data';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  ProfileRepository _profileRepository = ProfileRepository();
   Uint8List? image;

   //to retrieve lost data
  Future<void> getLostData()async {
    final ImagePicker picker = ImagePicker();
    final LostDataResponse response = await picker.retrieveLostData();
    if(response.isEmpty){
      return null;
    }
    final XFile? file = response.file;
    if(file != null){
      Uint8List img = await file.readAsBytes();
      setState(() {
        image = img;
      });
    }
  }

   // to select image from gallery
  void selectedImage()async{
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      image = img;
    });
  }
// to get image with camera
  void takeImage()async{
    Uint8List photo = await getImage(ImageSource.camera, CameraDevice.front);
    setState(() {
      image = photo;
    });
  }

  //save image to database
  void saveimage()async{
    String resp = await StoreData().saveData(file: image!);
    if(resp.isNotEmpty){
      print('image saved $resp');
    }else{
      print('try again');
    }
  }
  @override
  void initState(){
    super.initState();
    getLostData();
  }

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
          //AssetImage('assets/p11.jpg')
           // https://cdn-icons-png.flaticon.com/512/8847/8847419.png
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
                image != null ? CircleAvatar(
                  radius: 30,
                  backgroundImage: MemoryImage(image!),
                )
                :
              CircleAvatar(
                backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/8847/8847419.png'),
                radius: 30,
              ),
              Positioned(
                  child: IconButton(
                      onPressed:(){
                       showModalBottomSheet(
                           context: context,
                           builder: (builder){
                              return bottomSheet();
                           },
                         showDragHandle: true
                           );
                      } ,
                      icon: Icon(Icons.add_a_photo_outlined,
                      color: Colors.red,)
                  ),
                bottom: -10,
                left: 20,
              )            ]
          ),
        ),
        title: FutureBuilder(
          future: _profileRepository.getUserDetails(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting ){
                return CircularProgressIndicator(
                  color: Colors.blue,
                );
            }
            else if(snapshot.hasError){
              return Text('An Error occurred');
            }
            else if(snapshot.hasData){
              ModelX? user = snapshot.data;
              //print('User data retrieved: ${user?.toJson()}');
              return Text(user?.firstName?? 'user',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),);
            } else{
              //print('No user found');
              return Text('.....',
              style: TextStyle(color: Colors.white),);
            }

          }
        ) ,
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
  Widget bottomSheet(){
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20) ,
      child: Column(
        children: [
          Text('Choose your profile image'),
          SizedBox(height: 17,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                  onPressed: takeImage,
                  icon: Icon(Icons.camera_alt),
                  label: Text('Camera')),
              SizedBox(width: 10,),
              TextButton.icon(
                  onPressed: selectedImage,
                  icon: Icon(Icons.image),
                  label: Text('Gallery'))
            ],
          ),
          SizedBox(
            height: 8
          ),
          OutlinedButton(
              onPressed: (){
                saveimage();
                Navigator.pop(context);
              },
              child: Text('Save Image'))
        ],
      ) ,
    );
  }
}

