import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';
import '../../../../../gen/assets.gen.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -AppSize.s120,
      child: CircleAvatar(
          backgroundColor: ColorManager.lightGray,
          radius: AppSize.s80,
          child: Lottie.asset(Assets.animation.helloAnimation)),
    );
  }
}
