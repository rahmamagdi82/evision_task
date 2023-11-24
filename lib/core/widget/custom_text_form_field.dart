import 'package:flutter/material.dart';

import '../utils/resources/color_manager.dart';
import '../utils/resources/style_manager.dart';
import '../utils/resources/values_manager.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key, required this.hintText, required this.keyboardType, required this.validator, this.isObscureText , required this.textEditingController});

  final String hintText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool? isObscureText;

  final TextEditingController textEditingController;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isShowPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      autofocus: false,
      cursorColor: ColorManager.gray,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      obscureText: widget.isObscureText!=null?!isShowPassword:false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: FontStyles.getRegularStyle(),
        contentPadding: const EdgeInsets.all(AppPadding.p14),
        enabledBorder: customInputBorder(borderColor: ColorManager.gray),
        focusedBorder: customInputBorder(borderColor: ColorManager.primary),
        focusedErrorBorder:customInputBorder(borderColor: ColorManager.red),
        errorBorder: customInputBorder(borderColor: ColorManager.red),
        suffixIcon: widget.isObscureText != null? IconButton(onPressed:(){
          setState(() {
            isShowPassword = !isShowPassword;
          });
        }, icon: isShowPassword?const Icon(Icons.visibility):const Icon(Icons.visibility_off)):null
      ),
    );
  }

  InputBorder customInputBorder({required Color borderColor}){
    return OutlineInputBorder(borderRadius: BorderRadius.circular(AppSize.s10),borderSide: BorderSide(color: borderColor));
  }
}
