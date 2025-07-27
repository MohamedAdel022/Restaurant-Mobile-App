import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/features/auth/presentation/widgets/custom_text_form_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    required TextEditingController passwordController,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isObscured = true;
  void _toggleVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: widget._passwordController,
      hintText: 'Enter your password',
      keyboardType: TextInputType.text,
      obscureText: _isObscured,
      suffixIcon: GestureDetector(
        onTap: () {
          _toggleVisibility();
        },
        child: Icon(
          _isObscured ? Icons.visibility_off : Icons.visibility,
          color: Colors.grey,
        ),
      ),
      textInputAction: TextInputAction.done,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a password';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}
