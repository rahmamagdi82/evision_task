part of 'login_bloc.dart';

abstract class LoginEvent {}

class PerformLoginEvent extends LoginEvent{
  final LoginParameters loginParameters;
  PerformLoginEvent({required this.loginParameters});
}
