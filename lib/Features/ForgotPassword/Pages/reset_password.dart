import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindful_app/Features/Login/pages/login_page.dart';

import '../../Shared_Widgets/signup_items.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
        body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Reset Password',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
            Text('Choose a strong password with at least 8 characters',
              style: TextStyle(
                  fontSize: 16,
                  //fontWeight: FontWeight.bold,
                  color: Color(0xFf667185)
              ),),
            SizedBox(height: 16,),
            SiignupItems(
              title: "Password",
              label: "Enter password",
              onChanged: ( newText) {  },
              isAPassword: true,
              suffixIcon: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.remove_red_eye)),
            ),
            SizedBox(height: 16,),
            SiignupItems(
              title: "Confirm Password",
              label: "Enter password",
              onChanged: ( newText) {  },
              isAPassword: true,
              suffixIcon: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.remove_red_eye)),),
            SizedBox(height: 160,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                },
                child: Text('Reset'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0E55D8),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                ).copyWith(
                  minimumSize: MaterialStateProperty.all(
                      Size.fromHeight(30)),
                  fixedSize: MaterialStateProperty.all(Size(MediaQuery
                      .of(context)
                      .size
                      .width * 0.9, 40)),
                )),
          ],
    ),
    ),
    );
  }
}
