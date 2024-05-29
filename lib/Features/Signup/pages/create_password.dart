//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mindful_app/Features/HomePage/pages/home_view.dart';
import 'package:mindful_app/Features/Shared_Widgets/signup_items.dart';
import 'package:mindful_app/Features/Signup/pages/setup_Page.dart';

import '../bloc/signup_bloc.dart';
import '../bloc/signup_state.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

// TextEditingController _controller = new TextEditingController();

class _CreatePasswordState extends State<CreatePassword> {
  String emailAddress = "";
  String password = "";
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    SignupBloc bloc = context.watch<SignupBloc>();
    SignupState state = bloc.state;

    switch(state.signupStatus){
      case SignupStatus.Initial:
        break;
      case SignupStatus.Processing:
        break;
      case SignupStatus.Succesful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context){
                    return SetupPage();
                  })
          );
          bloc.reset();
        });
        break;

      case SignupStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text("An error occured")));
        });
        break;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('Create your password.',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
          Text('Choose a strong password with atleast \n8 characters',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16
          ),),
          SizedBox(height: 20,),
          SiignupItems(
            title: "Email Address",
            label: "Enter email",
            onChanged: ( newText) {
             emailAddress = newText;
            },
          ),
          SizedBox(height: 16,),
          Text("password",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
          TextField(
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                  icon: Icon(passwordVisible? Icons.visibility : Icons.visibility_off)),
                filled: true,
                fillColor: Colors.grey.shade100,
                hintText: "Enter password",
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey
                    )
                )
            ),
            onChanged:( newText) {
              password = newText;
            },
            keyboardType: TextInputType.visiblePassword,
            obscureText: !passwordVisible ,
          ),
          SizedBox(height: 16,),
          Text("Confirm password",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
          TextField(
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                    icon: Icon(passwordVisible? Icons.visibility : Icons.visibility_off)),
                filled: true,
                fillColor: Colors.grey.shade100,
                hintText: "Enter password",
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey
                    )
                )
            ),
            onChanged:( newText) {
              password = newText;
            },
            keyboardType: TextInputType.visiblePassword,
            obscureText: !passwordVisible ,
          ),
          SizedBox(height: 60,),
          ElevatedButton(
              onPressed: state.signupStatus == SignupStatus.Processing? null:(){
                  if(_isUserInputValid()){
                      bloc.registerUser(
                          emailAddress: emailAddress,
                          password: password);
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
    );
  }
  bool _isUserInputValid(){
    String errorMessage = "";
    const passwordRegex = r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$';
    const emailRegex =  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if(!RegExp(emailRegex).hasMatch(emailAddress)){
      errorMessage = "Invalid EmailAddress";
    } else if(!RegExp(passwordRegex).hasMatch(password)){
      errorMessage = " Password should contain Capital, small letter, Number & Special symbol";
    }
    if(errorMessage.isNotEmpty){
      ScaffoldMessenger
          .of(context)
          .showSnackBar(SnackBar(content: Text(errorMessage)));
      return false;
    }
    return true;
  }

}


