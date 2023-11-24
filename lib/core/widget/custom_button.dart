import 'package:flutter/material.dart';

import '../utils/resources/color_manager.dart';
import '../utils/resources/style_manager.dart';
import '../utils/resources/values_manager.dart';

class CustomButton extends StatelessWidget{
  const CustomButton({super.key, required this.title, required this.onPressed, this.isLoading = false});
  final String title;
  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s50,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s15))),
              backgroundColor: MaterialStateProperty.all(ColorManager.primary)
          ),
          child: isLoading ? CircularProgressIndicator(color: ColorManager.white,):Text(title,style: FontStyles.getBoldStyle().copyWith(color: ColorManager.white),)),
    );
  }
}