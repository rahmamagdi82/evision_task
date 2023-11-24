import 'package:evision_task/core/utils/resources/color_manager.dart';
import 'package:evision_task/core/utils/resources/style_manager.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget{
  const SlidingText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'Welcome To Our App',
              style: FontStyles.getSemiBoldStyle().copyWith(color: ColorManager.brown),
              textAlign: TextAlign.center,
            ));
      },
    );
  }
}