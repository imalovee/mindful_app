import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/ForgotPassword/Pages/forgot_password.dart';
import 'package:mindful_app/Features/HomePage/home_page.dart';
import 'package:mindful_app/Features/HomePage/pages/home_view.dart';
import 'package:mindful_app/Features/Login/bloc/login_bloc.dart';
import 'package:mindful_app/Features/Login/bloc/login_state.dart';
import 'package:mindful_app/Features/Signup/pages/register_page.dart';

import '../../Shared_Widgets/custom_textfield.dart';
import '../../Shared_Widgets/signup_items.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
 bool remeberMe = false;

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    var bloc = context.watch<LoginBloc>();
    var state = bloc.state;

    switch(state.loginStatus){
      case LoginStatus.Initial:
        break;
      case LoginStatus.Processing:
        break;
      case LoginStatus.Succesful:
      WidgetsBinding.instance.addPostFrameCallback((timeStamp){
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context){
              return Homepage();
            }));
        bloc.reset();
      });
      break;
      case LoginStatus.Error:
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("An error occured")));
        bloc.resetStatusToInitial();
      });
      break;
      case LoginStatus.InvalidEmailAdddress:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp){
         ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(content: Text(
                 "You entered an invalid emailaddress"
             )));
             bloc.resetStatusToInitial();
        } );

        break;
      case LoginStatus.InvalidPassword:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp){
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(
                  "You entered an invalid emailaddress"
              )));
              bloc.resetStatusToInitial();
          } );
        break;
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            SizedBox(height: 40,),
            Text('Welcome Back!',
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
            Row(
              children: [
                Text("Don't have an Account ?",
                  style: TextStyle(
                      fontSize: 16
                  ),),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                         MaterialPageRoute(builder: (context){
                           return SignupPage();
                         })
                      );
                    },
                    child: Text('Sign Up',
                      style: TextStyle(
                          color: Color(0xFF0E55D8),
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),))
              ],
            ),
            SizedBox(height: 20,),
            SiignupItems(
              title: "Email Adddress",
              label: "Enter email",
              onChanged: (String newText) {
                bloc.setEmailAddress(newText);
              },),
            SizedBox(height: 16,),
            SiignupItems(
              title: "Password",
              label: "Enter password",
              onChanged: (String newText) {
                bloc.setPassword(newText);
              },
              isAPassword: true,
              suffixIcon: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.remove_red_eye)),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: remeberMe,
                        onChanged: (newvalue) {
                          setState(() {
                            remeberMe = newvalue!;
                          });
                        }),
                    Text('Remember Me'),
                  ],
                ),

                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return ForgotPassword();
                        })
                    );
                  },
                  child: Text('Forgot Password?',
                      style: TextStyle(
                          color: Color(0xFFE01507),
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ) ),
                  )
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  bloc.onSubmit();
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0E55D8),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 45),
                )
                ),
          ],
        ),
      ),
    );
  }

}

//     .copyWith(
// minimumSize: MaterialStateProperty.all(
// Size.fromHeight(30)),
// fixedSize: MaterialStateProperty.all(Size(MediaQuery
//     .of(context)
//     .size
//     .width * 0.9, 40)),