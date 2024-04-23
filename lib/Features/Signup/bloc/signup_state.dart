import 'package:equatable/equatable.dart';

enum SignupStatus{Initial, Processing, Succesful, Error}

class SignupState extends Equatable{
  SignupState( {
    required this.emailAddress,
    required this.password,
    this.signupStatus = SignupStatus.Initial,
});

  static SignupState empty = SignupState(
      emailAddress: "",
      password: "",
    signupStatus: SignupStatus.Initial
  );
    
    final String emailAddress;
    final String password;
    final SignupStatus signupStatus;

  @override
  // TODO: implement props
  List<Object?> get props => [
    emailAddress, password, signupStatus
  ];

  SignupState copyWith({
      String? emailAddress,
      String? password,
      SignupStatus? signupStatus,
}){
    return SignupState(
        emailAddress: emailAddress?? this.emailAddress,
        password: password?? this.password,
        signupStatus: signupStatus?? this.signupStatus
    );
  }
}