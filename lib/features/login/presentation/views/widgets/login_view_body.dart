import 'package:evision_task/core/utils/resources/font_manager.dart';
import 'package:evision_task/core/utils/resources/style_manager.dart';
import 'package:evision_task/core/utils/resources/values_manager.dart';
import 'package:evision_task/features/login/presentation/views/widgets/form_section.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {

  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 5,
            ),
            Text(
              'Welcome back',
              style: FontStyles.getBoldStyle(fontSize: FontSize.s30),
            ),
            Text(
              'Login to your account',
              style: FontStyles.getRegularStyle(fontSize: FontSize.s18),
            ),
            const SizedBox(
              height: AppSize.s30,
            ),
            const FormSection(),
          ],
        ),
      ),
    );
  }
}
