import 'package:evision_task/core/utils/resources/color_manager.dart';
import 'package:evision_task/features/splash/presentation/view/widgets/splash_view_widget.dart';
import 'package:flutter/material.dart';


class SplashView extends StatelessWidget{
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const SplashViewWidget(),
    );
  }
}