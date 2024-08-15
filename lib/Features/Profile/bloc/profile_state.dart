import 'package:flutter/foundation.dart';

@immutable
abstract class ProfileImageState {}

class ProfileImageInitial extends ProfileImageState {}

class ProfileImageUpdated extends ProfileImageState {
  final String imageUrl;

  ProfileImageUpdated(this.imageUrl);
}