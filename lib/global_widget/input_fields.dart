
import 'package:flutter/material.dart';
class InputFieldWidget extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final Widget sufferIcon;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final AutovalidateMode? autoValidateMode;
  const InputFieldWidget({super.key,required this.hintText, this.sufferIcon = const SizedBox.shrink(),required this.controller, this.validator, this.autoValidateMode, this.obscureText=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      child: TextFormField(
        obscureText: obscureText,
        scrollPadding: EdgeInsets.zero,
        controller: controller,
        validator: validator,
        autovalidateMode: autoValidateMode,
        decoration:  InputDecoration(
          isDense: true,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
         focusColor: Colors.white.withOpacity(0.2),
           fillColor: Colors.white.withOpacity(0.2),
          focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide:  BorderSide(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
          enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide:  BorderSide(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
          focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
          errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
          hintText: hintText,
          suffixIcon: sufferIcon
      ))
    );
  }
}