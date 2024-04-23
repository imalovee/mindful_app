import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/HomePage/home_page.dart';
import 'package:mindful_app/Features/Login/pages/login_page.dart';

import '../../Shared_Widgets/custom_textfield.dart';
import '../../Shared_Widgets/signup_items.dart';
import 'create_password.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

bool remeberMe = false;
class _SignupPageState extends State<SignupPage> {

List<String>items = [
  "Female ",
    "Male",
    " Other",
  "Select Gender"

];
  String? selectedItem;

  @override
  void initState(){
    super.initState();
    selectedItem = "Select Gender";
  }

    String surName = "";
 String name = "";
  String gender = "";
  String phoneNumber = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16.sp),
          children: [
            SizedBox(height: 20,),

            Text('Create Your Account.',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
            Row(
              children: [
                Text('Have an Account ?',
                style: TextStyle(
                  fontSize: 16.sp
                ),),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                        MaterialPageRoute(builder: (context){
                          return LoginPage();
                        })
                      );
                    },
                    child: Text('Log in',
                      style: TextStyle(
                          color: Color(0xFF0E55D8),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold
                      ),))
              ],
            ),
            SizedBox(height: 16,),
            SiignupItems(
              title: "Name",
              label: "Enter name",
              onChanged: (String newText) {
                name = newText;
              },),
            SizedBox(height: 16,),
            SiignupItems(
              title: "Surname",
              label: "Enter surname",
              onChanged: (String newText) {
                surName = newText;
              },),
            SizedBox(height: 16,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Gender',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                Container(
                  height: 58.sp,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                      )
                    ),
                      value: selectedItem,
                      items: [
                        for (String item in items)
                          DropdownMenuItem<String>(
                            value: item,
                              child: Text(item,
                              style: TextStyle(fontSize: 15.sp),
                              )
                          ),
                        if (!items.contains(selectedItem))
                          DropdownMenuItem<String>(
                              value: selectedItem,
                              child: Text(selectedItem!,
                                style: TextStyle(fontSize: 15.sp),
                              )
                          ),
                      ] ,
                      onChanged: (item){
                      setState(() {
                        selectedItem = item;
                      });
                      }
                  ) ,
                ),
              ],
            ),
            SizedBox(height: 16,),
            SiignupItems(
              title: "Phone Number",
              label: "Enter phone Number",
              onChanged: (String newText) {},),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    value: remeberMe,
                    onChanged: (newvalue){
                      setState(() {
                        remeberMe = newvalue!;
                      });
                    }),
                Text("I agree to mindful's"),
                TextButton(
                    onPressed: (){},
                    child: Text('Terms & conditions',
                    style: TextStyle(
                      color: Color(0xFF0E55D8),
                    ),)),
              ],
            ),
            SizedBox(height: 50,),
            ElevatedButton(
                onPressed: () {
                  if(_isUserInputValid()){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) {
                          return CreatePassword();
                        }));
                  }
                },
                child: Text('Proceed'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0E55D8),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 45),
                )),

          ],
        ),
      ),
    );
  }

        bool _isUserInputValid(){
          String errorMessage = "";
          //Check to see if input is valid
        if(name.isEmpty){
            errorMessage = "Name cannot be empty";
        }else if(surName.isEmpty){
              errorMessage = "Surname cannot be empty";
        }
        if(errorMessage.isNotEmpty){
          //Show Snackbar Alert
              ScaffoldMessenger
                .of(context)
                .showSnackBar(SnackBar(content: Text(errorMessage)));
          return false;
        }
        return true;
        }
}


