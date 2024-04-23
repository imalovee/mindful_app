import 'package:flutter/material.dart';
import 'package:mindful_app/Features/ForgotPassword/Pages/reset_password.dart';

import '../../HomePage/home_page.dart';
import '../../Shared_Widgets/otp_textfield.dart';

class VerifyAccount extends StatelessWidget {
  const VerifyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Verify your account',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              Text('Input the 5 digit code sent to your phone number and email address',
                style: TextStyle(
                    fontSize: 16,
                    //fontWeight: FontWeight.bold,
                    color: Color(0xFf667185)
                ),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OTPTextField(),
                  OTPTextField(),
                  OTPTextField(),
                  OTPTextField(),
                  OTPTextField(),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Text("Didn’t receive the code?",
                    style: TextStyle(
                        fontSize: 16
                    ),),
                  TextButton(
                      onPressed: () {
                      },
                      child: Text('Resend(45s)',
                        style: TextStyle(
                          color: Color(0xFFE01507),
                          fontSize: 16,
                          // fontWeight: FontWeight.bold
                        ),))
                ],
              ),
              SizedBox(height: 160,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ResetPassword();
                        }));
                  },
                  child: Text('Confirm'),
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
        )
    );
  }
}

