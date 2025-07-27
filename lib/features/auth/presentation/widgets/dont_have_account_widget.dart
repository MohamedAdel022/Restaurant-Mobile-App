import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:restaurant_mobile_app/core/router/routes.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account?",
            style: TextStyle(
              color: const Color(0xFF0F0F0F),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 1.43,
            ),
          ),
          TextSpan(
            text: ' ',
            style: TextStyle(
              color: const Color(0xFF292A2E),
              fontSize: 16,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
          TextSpan(
            text: 'Register',
            style: TextStyle(
              color: const Color(0xFFFE8C00),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 1.43,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, Routes.register);
                
              },
          ),
        ],
      ),
    );
  }
}
