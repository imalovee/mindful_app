import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mindful_app/Features/Login/bloc/login_state.dart';
import 'package:mindful_app/Features/Login/repository/login_repository.dart';

class LoginBloc extends Cubit<LoginState>{
  LoginBloc(): super(LoginState.empty);

  LoginRepository loginRepository = LoginRepository();

  void logout()async{
    await FirebaseAuth.instance.signOut();
  }

    void reset()async{
      emit(LoginState.empty);
    }

    void resetStatusToInitial()async{
      emit(state.copyWith(loginStatus: LoginStatus.Initial));
    }

    void login(
        String emailAddress,
        String password
        )async{
      emit(state.copyWith(loginStatus: LoginStatus.Processing));
      try{
        await loginRepository.loginUser(email: emailAddress, password: password);
        emit(state.copyWith(loginStatus: LoginStatus.Succesful));
      }catch(e,s){
        print(e);
        emit(state.copyWith(loginStatus: LoginStatus.Error));
      }
}

  void setEmailAddress(String email){
    var newState = state.copyWith(emailAddress: email);
    emit(newState);
  }

  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }
   void onSubmit()async{
      if(_isUserInputValid())
     //pass to repository for login
        emit(state.copyWith(loginStatus: LoginStatus.Processing));
      try{
        await loginRepository.loginUser(email: state.emailAddress, password: state.password);
        emit(state.copyWith(loginStatus: LoginStatus.Succesful));
      }catch(e,s){
        if(kDebugMode){
          print(e);
        }
        emit(state.copyWith(loginStatus: LoginStatus.Error));
      }
   }

  bool _isUserInputValid(){

    const passwordRegex = r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$';
    const emailRegex =  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if(!RegExp(emailRegex).hasMatch(state.emailAddress)){
      emit(state.copyWith(loginStatus: LoginStatus.InvalidEmailAdddress));
    } else if(!RegExp(passwordRegex).hasMatch(state.password)){
      emit(state.copyWith(loginStatus: LoginStatus.InvalidPassword));
      return false;
    }

    return true;
  }

}