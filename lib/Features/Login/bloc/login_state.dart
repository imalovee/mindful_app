import 'package:equatable/equatable.dart';

enum LoginStatus{Initial, Processing, Succesful, Error, InvalidPassword, InvalidEmailAdddress}

class LoginState extends Equatable{
  LoginState( {
    required this.emailAddress,
    required this.password,
    this.loginStatus = LoginStatus.Initial,
  });

  static LoginState empty = LoginState(
      emailAddress: "",
      password: "",
      loginStatus: LoginStatus.Initial
  );

  final String emailAddress;
  final String password;
  final LoginStatus loginStatus;

  @override
  // TODO: implement props
  List<Object?> get props => [
    emailAddress, password, loginStatus
  ];

  LoginState copyWith({
    String? emailAddress,
    String? password,
    LoginStatus? loginStatus,
  }){
    return LoginState(
        emailAddress: emailAddress?? this.emailAddress,
        password: password?? this.password,
        loginStatus: loginStatus?? this.loginStatus
    );
  }
}