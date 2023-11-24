import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';
import '../../../../../core/utils/router_manager.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../../../core/widget/custom_text_form_field.dart';
import '../../../data/domain/login_paramaters.dart';
import '../../../domain/entities/user_entity.dart';
import '../../controller/login_bloc.dart';

class FormSection extends StatefulWidget {
  const FormSection({super.key});

  @override
  State<FormSection> createState() => _FormSectionState();
}

class _FormSectionState extends State<FormSection> {

  var formKey = GlobalKey<FormState>();

  var userNameController = TextEditingController();

  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextFormField(
              hintText: 'UserName',
              keyboardType: TextInputType.name,
              validator: (value) =>
                  UserEntity.userNameValidation(value!),
              textEditingController: userNameController,
            ),
            const SizedBox(
              height: AppSize.s10,
            ),
            CustomTextFormField(
              hintText: 'Password',
              keyboardType: TextInputType.visiblePassword,
              isObscureText: true,
              validator: (value) =>
                  UserEntity.passwordValidation(value!),
              textEditingController: passwordController,
            ),
            const SizedBox(
              height: AppSize.s58,
            ),
            BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state is LoginSuccess) {
                  context.go(AppRouter.homeViewPath);
                }
                else if (state is LoginFailure) {
                  Fluttertoast.showToast(msg: state.errorMessage,backgroundColor: ColorManager.red);
                }

              },
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is LoginLoading,
                  title: 'Log In',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<LoginBloc>().add(PerformLoginEvent(
                          loginParameters: LoginParameters(
                            userName: userNameController.text,
                            password: passwordController.text,

                          )));
                    }
                  },
                );
              },
            )
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    passwordController.dispose();
    LoginBloc().close();
  }
}
