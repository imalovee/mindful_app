import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mindful_app/Features/Profile/bloc/profile_state.dart';

class ProfileCubit extends Cubit<ProfileImageState>{
  ProfileCubit(): super(ProfileImageInitial());

  void setProfileImage(String imageUrl){
    emit(ProfileImageUpdated(imageUrl));
  }

  void clearImage(){
    emit(ProfileImageInitial());
  }
}