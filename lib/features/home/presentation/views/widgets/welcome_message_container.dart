import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/utils/resources/style_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';

class WelcomeMessageContainer extends StatelessWidget {
  const WelcomeMessageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal:AppPadding.p12,vertical: AppPadding.p40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s15),
          color: ColorManager.lightGray,
        ),
        child: Text('Ready to dive in, user? Just tap, swipe, and start exploring with App.',style:FontStyles.getSemiBoldStyle(),textAlign: TextAlign.center,));
  }
}
