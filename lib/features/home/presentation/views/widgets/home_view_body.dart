import 'package:evision_task/core/utils/resources/values_manager.dart';
import 'package:evision_task/features/home/presentation/views/widgets/welcome_message_container.dart';
import 'package:flutter/material.dart';

import 'animation_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppPadding.p30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                WelcomeMessageContainer(),
                AnimationWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
