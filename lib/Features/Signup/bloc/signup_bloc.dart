import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mindful_app/Features/Profile/models/user_model.dart';
import 'package:mindful_app/Features/Signup/bloc/signup_state.dart';
import 'package:mindful_app/Features/Signup/repository/repository_file.dart';

class SignupBloc extends Cubit<SignupState>{
  SignupBloc(): super(SignupState.empty);

  SignupRepository signupRepository = SignupRepository();

  void reset(){
    emit(SignupState.empty);
  }

    void registerUser({

    required String emailAddress,
    required String password,
})async{
      emit(state.copyWith(signupStatus: SignupStatus.Processing));
        try{
            await signupRepository.signupUser(
                email: emailAddress,
                password: password);

            await signupRepository.getEmail(emailAddress);
            emit(state.copyWith(signupStatus: SignupStatus.Succesful));
        } on FirebaseAuthException catch (e) {
          emit(state.copyWith(signupStatus: SignupStatus.Error));
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
          }
        } catch (e) {
          emit(state.copyWith(signupStatus: SignupStatus.Error));
          print(e);
        }
    }
}