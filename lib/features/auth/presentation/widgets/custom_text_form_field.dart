import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final Function()? onTap;
  final Widget? suffixIcon;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.textInputAction,
    this.onChanged,
    this.onSaved,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      textInputAction: textInputAction,
      onChanged: onChanged,
      onSaved: onSaved,
      onTap: onTap,
      style: const TextStyle(
        color: Color(0xFF0F0F0F),
        fontSize: 14,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 1.43,
      ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF878787),
          fontSize: 14,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: 1.43,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(16),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder().copyWith(
          borderSide: const BorderSide(width: 1, color: Colors.grey),
        ),
        errorBorder: buildErrorBorder(),
        focusedErrorBorder: buildErrorBorder(),
      ),
    );
  }

  OutlineInputBorder buildErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(width: 1, color: Color(0xFFEDEDED)),
    );
  }
}
