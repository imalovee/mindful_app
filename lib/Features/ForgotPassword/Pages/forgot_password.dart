import 'package:flutter/material.dart';
import 'package:mindful_app/Features/ForgotPassword/Pages/verify_account.dart';

import '../../HomePage/home_page.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('Forgot Password',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
          Text('Enter your email address or phone number to change your password',
            style: TextStyle(
                fontSize: 16,
                //fontWeight: FontWeight.bold,
                color: Color(0xFf667185)
            ),),
          SizedBox(height: 26,),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                hintText: "Enter email address or phone number",
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey
                    )
                )
            ),
            onChanged: (newText){},
          ),
          SizedBox(height: 60,),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return VerifyAccount();
                    }));
              },
              child: Text('Send Code'),
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
    );
  }
}
