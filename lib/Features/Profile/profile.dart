import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mindful_app/Features/Login/bloc/login_bloc.dart';
import 'package:mindful_app/Features/Login/pages/login_page.dart';
import 'package:mindful_app/Features/Profile/bloc/profile_cubit.dart';
import 'package:mindful_app/gen/assets.gen.dart';
import '../HomePage/pages/image_utils.dart';
import 'Widgets/profile_items.dart';
import 'dataStore.dart';

class Profile extends StatefulWidget {
  const Profile({super.key, });
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? imageUrl;
  Uint8List? selectedImage;
  //save image to database
  void uploadImage(Uint8List image)async{
    User? currentuser = FirebaseAuth.instance.currentUser;
    if(currentuser != null){
      String userid = currentuser.uid;
      String resp = await StoreData().saveData(file: image, uid: userid);

      if(resp.isNotEmpty){
        setState(() {
          imageUrl = resp;
        });
        //show a snackbar
        print('image saved $resp');
        //notify bloc of the new update
        BlocProvider.of<ProfileCubit>(context).setProfileImage(resp);
        
      }else{
        //show alert
        print('try again');
      }
    }else{
      //show alert
      print('no user loggedin');
    }
  }

  // to select image from gallery
  void selectImage()async{
    Uint8List img = await pickImage(ImageSource.gallery);
    uploadImage(img);
  }
// to get image with camera
  void takeImage()async{
    Uint8List photo = await getPhoto(ImageSource.camera, CameraDevice.front);
    uploadImage(photo);
  }

  //fetch image url when user logsin
  void onLogin() async{
    User? currentuser = FirebaseAuth.instance.currentUser;
    if(currentuser != null){
      String uID = currentuser.uid;
      String url = await StoreData().getImageUrl(uID);
      if(url != null){
        setState(() {
          imageUrl = url;
        });
        BlocProvider.of<ProfileCubit>(context).setProfileImage(url);
      }else{
        print('image not fetched');
      }
    }
  }

  @override
  void initState(){
    super.initState();
    onLogin();  // Fetch the image URL when the widget is initialized
  }

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
          Center(
            child: GestureDetector(
              onTap: (){
                showModalBottomSheet(context: context,
                    builder: (builder){
                  return bottomSheet();},
                  showDragHandle: true
                );
              } ,
              child: Stack(
                children: [
                  imageUrl != null && imageUrl!.isNotEmpty ? CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(imageUrl!),
                  )
                  :
                  CircleAvatar(
                    radius: 60,
                    child: Icon(Icons.person, size: 40,),
                  ),
                  Positioned(
                      child: Icon(Icons.camera_alt, color: Colors.green, ),
                    top: 10,
                    left: 90,
                  )
                ]
              ),
            ),
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
                  onPressed: selectImage,
                  icon: Icon(Icons.image),
                  label: Text('Gallery'))
            ],
          ),
          SizedBox(
              height: 8
          ),
          OutlinedButton(
              onPressed: (){
                if (selectedImage != null) {
                  uploadImage(selectedImage!);
                }
                Navigator.pop(context);
              },
              child: Text('Upload Image'))
        ],
      ) ,
    );
  }
}

