
import 'package:bloc/bloc.dart';

import '../../data/domain/login_paramaters.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<PerformLoginEvent>((event, emit) {
      emit(LoginLoading());

      if(event.loginParameters.userName == 'user' && event.loginParameters.password == 'password'){
        emit(LoginSuccess());
      }
      else{
        emit(LoginFailure(errorMessage: 'Username or password is incorrect'));
      }

    });
  }
}
