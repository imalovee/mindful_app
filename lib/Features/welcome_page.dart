import 'package:flutter/material.dart';
import 'package:mindful_app/Features/Login/pages/login_page.dart';
import 'package:mindful_app/Features/Signup/pages/create_password.dart';
import 'package:mindful_app/Features/Signup/pages/register_page.dart';

import '../gen/assets.gen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/splash screen.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), // Adjust the opacity level here
                  BlendMode.softLight, // You can use different blend modes here
                ),
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 250,),
                Text('Begin Your Healing \nJourney with Mindful',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 8,),
                Text('Get started today. Set a goal a day at a time and watch yourself heal.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white
                ),),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                            return SignupPage();
                          }));
                    },
                    child: Text('Get Started'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade600,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ).copyWith(
                      minimumSize: MaterialStateProperty.all(Size.fromHeight(30)),
                      fixedSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width * 0.9, 40)),
                    )),
                SizedBox(height: 8,),
                OutlinedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                            return LoginPage();
                          }));
                    },
                    child: Text("Log In"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: Colors.white,
                      width: 5,
                    )
                  )
                ).copyWith(
                  minimumSize: MaterialStateProperty.all(Size.fromHeight(30)),
                  fixedSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width * 0.9, 40)),
                )
                )
              ],
            ),
          ),
        ),
    );
  }
}
