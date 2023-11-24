import 'package:evision_task/features/login/presentation/controller/login_bloc.dart';
import 'package:evision_task/features/login/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider<LoginBloc>(
      create: (BuildContext context) => LoginBloc(),
      child: const Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}
