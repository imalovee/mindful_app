import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindful_app/Features/Login/bloc/login_bloc.dart';
import 'package:mindful_app/Features/welcome_page.dart';
import 'package:mindful_app/firebase_options.dart';
import 'Features/Signup/bloc/signup_bloc.dart';
import 'Features/Signup/pages/create_password.dart';
import 'Features/Signup/pages/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(360, 800)
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => SignupBloc(),
        ),
        BlocProvider(
            create: (BuildContext context) => LoginBloc(),
        ),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: WelcomePage()
      ),
    );
  }
}
